"""
================================================================================
  Task-Aware Object Detection — DVCon India 2026
  Stage 1 : YOLO26n Backbone Detection + Multi-Scale Feature Hooking
  Stage 2 : ROI Align → Channel Compression → 128-D Visual Fingerprint (φ_o)
================================================================================

Pipeline Overview
-----------------
  Input Image [B, 3, H, W]
      │
      ▼
  ┌─────────────────────────────────────────┐
  │  Stage 1 – YOLO26n (Ultralytics)        │
  │   • Forward hooks intercept P3/P4/P5    │
  │   • Standard detect head → NMS output  │
  └─────────────────────────────────────────┘
      │ feature maps          │ detections
      │ (P3, P4, P5)          │ (boxes, cls, conf)
      ▼                       ▼
  ┌──────────────────────────────────────────────┐
  │  Stage 2 – Multi-Scale ROI Align             │
  │   • roi_align per scale  →  [N, C, 7, 7]    │
  │   • Concat P3+P4+P5      →  [N, 448, 7, 7]  │
  │   • 1×1 Conv             →  [N, 128, 7, 7]  │
  │   • AvgPool              →  [N, 128]  (φ_o) │
  └──────────────────────────────────────────────┘
      │
      ▼
  φ_o  [N, 128]  ─── ready for downstream GAT ───►

Author  : (your name)
Contest : DVCon India 2026 Design Contest
"""

import torch
import torch.nn as nn
import torchvision.ops as ops
import numpy as np
from PIL import Image, ImageDraw, ImageFont


# ──────────────────────────────────────────────────────────────────────────────
#  Utility: Hook Helper
# ──────────────────────────────────────────────────────────────────────────────
def _make_hook(store: dict, key: str):
    """
    Returns a forward hook function that writes the layer's output tensor
    into `store[key]`.  The hook is stateless — each forward pass overwrites
    the previous entry so memory does not accumulate.

    Args:
        store (dict): Shared dictionary owned by YOLOFeatureExtractor.
        key   (str) : Name used to retrieve the feature map ('P3', 'P4', 'P5').
    """
    def hook(module, inputs, output):
        store[key] = output          # output is a Tensor [B, C, H, W]
    return hook


# ──────────────────────────────────────────────────────────────────────────────
#  Main Module
# ──────────────────────────────────────────────────────────────────────────────
class YOLOFeatureExtractor(nn.Module):
    """
    Wraps a YOLO26n model (Ultralytics format) and adds:
      • Forward hooks to capture P3 / P4 / P5 neck feature maps.
      • Multi-scale ROI Align to crop per-object features.
      • A learned 1×1 Conv + AvgPool head to produce a 128-D φ_o fingerprint.

    The hook layer indices below are calibrated for YOLO26n's FPN neck.
    If you load a different variant, call `print_model_layers()` first to
    discover the correct indices.

    Args:
        weights_path (str)  : Path to yolo26n.pt (Ultralytics checkpoint).
        roi_size     (tuple): Spatial size of each ROI crop.  Default (7, 7).
        final_dim    (int)  : Output channel dimension of φ_o.  Default 128.
        conf_thresh  (float): Minimum confidence to keep a detection.
        iou_thresh   (float): IoU threshold for NMS.
        hook_indices (dict) : Maps scale name → model.model layer index.
                              Defaults calibrated for YOLO26n neck output layers.
    """

    # ── Default neck layer indices for YOLO26n ────────────────────────────────
    # These are the FPN "upsample + concat" output layers in the neck.
    # Adjust if your model version differs (use print_model_layers() below).
    DEFAULT_HOOK_INDICES = {
        'P3': 16,   # stride-8  output,  ~64  channels (updated)
        'P4': 19,   # stride-16 output,  ~128 channels (updated)
        'P5': 22,   # stride-32 output,  ~256 channels (updated)
    }

    # Channels emitted by the neck at each scale for YOLO26n
    SCALE_CHANNELS = {'P3': 64, 'P4': 128, 'P5': 256}

    # Downsampling strides relative to the input image
    STRIDES = {'P3': 8, 'P4': 16, 'P5': 32}

    def __init__(
        self,
        weights_path: str = 'yolo26n.pt',
        roi_size: tuple = (7, 7),
        final_dim: int = 128,
        conf_thresh: float = 0.25,
        iou_thresh: float = 0.45,
        hook_indices: dict = None,
    ):
        super().__init__()

        # ── Configuration ─────────────────────────────────────────────────────
        self.roi_size    = roi_size
        self.final_dim   = final_dim
        self.conf_thresh = conf_thresh
        self.iou_thresh  = iou_thresh
        self.hook_indices = hook_indices or self.DEFAULT_HOOK_INDICES

        # Shared store: populated by hooks on every forward pass
        self._feature_store: dict = {}

        # Hook handles kept so we can remove them if needed
        self._hook_handles = []

        # ── Stage 1 : Load YOLO26n ────────────────────────────────────────────
        # Keep the Ultralytics wrapper for inference and the raw nn.Module for hooks.
        self.yolo = self._load_yolo(weights_path)
        self.backbone = self.yolo.model if not isinstance(self.yolo, MockYOLO) else self.yolo

        # Register forward hooks on the neck layers
        self._register_neck_hooks()

        # ── Stage 2 : Feature compression head ───────────────────────────────
        concat_ch = sum(self.SCALE_CHANNELS.values())   # 64+128+256 = 448

        self.channel_compressor = nn.Sequential(
            # 1×1 conv: compress 448 → final_dim without touching spatial dims
            nn.Conv2d(concat_ch, final_dim, kernel_size=1, bias=False),
            nn.BatchNorm2d(final_dim),
            nn.ReLU(inplace=True),
        )

        # Collapse spatial 7×7 → 1×1
        self.avg_pool = nn.AdaptiveAvgPool2d((1, 1))

    def train(self, mode: bool = True):
        """
        Safe override for nn.Module.train().

        Ultralytics' YOLO object exposes a `.train(...)` API that starts
        optimization. We avoid calling that method during mode switches.
        """
        self.training = mode

        # Toggle all registered nn.Module children except the Ultralytics wrapper.
        for name, module in self._modules.items():
            if module is None:
                continue
            if name == 'yolo':
                continue
            module.train(mode)

        # Ensure the hooked backbone still follows train/eval state.
        if hasattr(self, 'backbone') and isinstance(self.backbone, nn.Module):
            self.backbone.train(mode)

        return self

    def eval(self):
        """Safe eval() that cannot accidentally trigger Ultralytics training."""
        return self.train(False)

    # ── Private helpers ───────────────────────────────────────────────────────

    def _load_yolo(self, weights_path: str) -> nn.Module:
        """
        Attempts to load the YOLO26n model via Ultralytics.
        Falls back to MockYOLO if Ultralytics is not installed (useful for
        offline shape-testing without GPU / weights).
        """
        try:
            from ultralytics import YOLO
            yolo_wrapper = YOLO(weights_path)
            # .model is the raw nn.Module (DetectionModel) used for hooks.
            yolo_wrapper.model.eval()
            print(f"[INFO] Loaded YOLO26n weights from: {weights_path}")
            return yolo_wrapper
        except Exception as exc:
            print(f"[WARN] Could not load Ultralytics YOLO: {exc}")
            print("[WARN] Falling back to MockYOLO for shape validation.")
            return MockYOLO()

    def _register_neck_hooks(self):
        """
        Attaches forward hooks to the FPN neck layers that emit P3, P4, P5.

        For Ultralytics models the sub-layers live at:
            self.yolo.model[<index>]

        For the MockYOLO fallback we attach to its named sub-modules.
        """
        if isinstance(self.yolo, MockYOLO):
            # MockYOLO exposes explicit attributes for each scale
            targets = {
                'P3': self.yolo.neck_p3,
                'P4': self.yolo.neck_p4,
                'P5': self.yolo.neck_p5,
            }
            for scale, module in targets.items():
                handle = module.register_forward_hook(
                    _make_hook(self._feature_store, scale)
                )
                self._hook_handles.append(handle)
        else:
            # Real Ultralytics DetectionModel: layers are in self.yolo.model (a list)
            layer_list = self.backbone.model
            for scale, idx in self.hook_indices.items():
                handle = layer_list[idx].register_forward_hook(
                    _make_hook(self._feature_store, scale)
                )
                self._hook_handles.append(handle)
                print(f"[INFO] Hook registered: {scale} ← model.model[{idx}]")

    @staticmethod
    def _boxes_to_roi_format(
        boxes: torch.Tensor,   # [N, 4]  absolute pixel xyxy, already on device
        batch_idx: int,
        device: torch.device,
    ) -> torch.Tensor:
        """
        Converts [N, 4] xyxy boxes to torchvision ROI format [N, 5]:
            [batch_index, x1, y1, x2, y2]
        """
        idx_col = torch.full(
            (boxes.size(0), 1), batch_idx, dtype=boxes.dtype, device=device
        )
        return torch.cat([idx_col, boxes], dim=1)  # [N, 5]

    # ── Public helpers ────────────────────────────────────────────────────────

    def print_model_layers(self):
        """
        Prints every sub-layer of the loaded YOLO model with its index.
        Use this to identify the correct hook_indices for your specific
        YOLO26n variant before training.
        """
        if isinstance(self.yolo, MockYOLO):
            print("[INFO] MockYOLO — no real layers to inspect.")
            return
        print("\n── YOLO26n Layer Map ──────────────────────────────────────────")
        for i, layer in enumerate(self.backbone.model):
            print(f"  [{i:>3}]  {type(layer).__name__}")
        print("────────────────────────────────────────────────────────────────\n")

    def remove_hooks(self):
        """Removes all registered forward hooks (call before saving/exporting)."""
        for h in self._hook_handles:
            h.remove()
        self._hook_handles.clear()
        print("[INFO] All forward hooks removed.")

    # ── Core forward pass ─────────────────────────────────────────────────────

    def forward(
        self,
        x: torch.Tensor,
        pre_nms_boxes: torch.Tensor = None,
    ) -> dict:
        """
        Full Stage 1 + Stage 2 forward pass.

        Args:
            x (Tensor): Input image batch of shape [B, 3, H, W].
                        Values should be normalised [0, 1] or [0, 255] per
                        your YOLO preprocessing convention.

            pre_nms_boxes (Tensor | None):
                Optional override for testing without real YOLO weights.
                Shape [B, N, 4] in absolute pixel xyxy coordinates.
                If None, detections are parsed from the YOLO head output.

        Returns:
            dict with keys:
              'detections'         – list of per-image dicts:
                                       {'boxes': [N,4], 'scores': [N], 'classes': [N]}
              'feature_maps'       – {'P3': Tensor, 'P4': Tensor, 'P5': Tensor}
              'visual_fingerprints'– φ_o  [Total_N, 128]  ready for GAT
              'roi_batch_indices'  – [Total_N] int64 indicating which image
                                     each fingerprint belongs to
        """
        B, _, H, W = x.shape
        device = x.device

        # ── Stage 1a: Direct PyTorch forward (Bypasses Ultralytics Trainer completely) ──
        self._feature_store.clear()

        with torch.no_grad():
            if isinstance(self.yolo, MockYOLO):
                raw_output = self.yolo(x)      # hooks populate _feature_store
            else:
                # Force direct PyTorch evaluation to completely block the Ultralytics trainer loop
                self.backbone.eval()
                # Run direct unmanaged execution to extract pure features and raw prediction heads
                raw_output = self.backbone(x)  # triggers hooks at layers 16, 19, 22 automatically

        # ── Stage 1b: Parse unmanaged detections safely ────────────────────────
        if pre_nms_boxes is not None:
            # Manual override (shape-test / ablation mode)
            detections = self._parse_dummy_boxes(pre_nms_boxes, device)
        elif isinstance(self.yolo, MockYOLO):
            detections = self._parse_yolo_output(raw_output, B, device)
        else:
            # Decode native end-to-end tensor predictions directly without wrapper dependency 
            detections = []
            # raw_output[0] contains the final concatenated prediction tensor [B, 300, 6]
            preds = raw_output[0] 
            
            for b_idx in range(B):
                img_preds = preds[b_idx]  # Predictions for single image
                
                # YOLO26 features direct coordinate bounding box regression 
                # Format is [x1, y1, x2, y2, score, class_id]
                boxes = img_preds[:, :4]
                scores = img_preds[:, 4]
                classes = img_preds[:, 5].long()
                
                # Filter out low confidence targets based on your set threshold
                keep = scores >= self.conf_thresh
                
                detections.append({
                    'boxes': boxes[keep],
                    'scores': scores[keep],
                    'classes': classes[keep]
                })

        # Build flat ROI tensor [Total_N, 5] across the whole batch
        all_rois = []
        batch_indices = []
        for b_idx, det in enumerate(detections):
            if det['boxes'].numel() == 0:
                continue
            roi = self._boxes_to_roi_format(det['boxes'], b_idx, device)
            all_rois.append(roi)
            batch_indices.append(
                torch.full((roi.size(0),), b_idx, dtype=torch.long, device=device)
            )

        if not all_rois:
            # No detections in the entire batch
            return {
                'detections': detections,
                'feature_maps': dict(self._feature_store),
                'visual_fingerprints': torch.zeros(0, self.final_dim, device=device),
                'roi_batch_indices': torch.zeros(0, dtype=torch.long, device=device),
            }

        rois = torch.cat(all_rois, dim=0)               # [Total_N, 5]
        roi_batch_indices = torch.cat(batch_indices, dim=0)  # [Total_N]

        # ── Stage 2a: Multi-Scale ROI Align ───────────────────────────────────
        aligned_per_scale = []
        for scale_name, stride in self.STRIDES.items():
            feat_map = self._feature_store[scale_name]  # [B, C, H/s, W/s]

            # spatial_scale converts ROI pixel coords → feature map coords
            # (i.e., divides box coords by the stride)
            crop = ops.roi_align(
                input=feat_map,
                boxes=rois,
                output_size=self.roi_size,        # → [Total_N, C, 7, 7]
                spatial_scale=1.0 / stride,       # pixel → feature coords
                sampling_ratio=2,                 # 2×2 bilinear sampling grid
                aligned=True,                     # half-pixel offset (modern default)
            )
            aligned_per_scale.append(crop)

        # ── Stage 2b: Concat  →  [Total_N, 448, 7, 7] ────────────────────────
        # Order: P3(64) | P4(128) | P5(256)  = 448 channels total
        concat_feats = torch.cat(aligned_per_scale, dim=1)

        # ── Stage 2c: 1×1 Conv compress  →  [Total_N, 128, 7, 7] ─────────────
        compressed = self.channel_compressor(concat_feats)

        # ── Stage 2d: AvgPool + flatten  →  [Total_N, 128] ───────────────────
        pooled = self.avg_pool(compressed)              # [Total_N, 128, 1, 1]
        phi_o  = pooled.view(pooled.size(0), -1)        # [Total_N, 128]

        return {
            'detections':          detections,
            'feature_maps':        dict(self._feature_store),
            'visual_fingerprints': phi_o,           # ← feed this to your GAT
            'roi_batch_indices':   roi_batch_indices,
        }
    # ── Detection parsing helpers ─────────────────────────────────────────────

    def _parse_yolo_output(self, raw, B: int, device) -> list:
        """
        Parses Ultralytics detection output into a per-image list of dicts.
        Ultralytics returns a list of `Results` objects when run in predict
        mode, or a tuple of tensors in export/train mode.

        We handle both cases gracefully.
        """
        detections = [{'boxes': torch.zeros(0, 4, device=device),
                        'scores': torch.zeros(0, device=device),
                        'classes': torch.zeros(0, dtype=torch.long, device=device)}
                       for _ in range(B)]
        try:
            # Ultralytics Results list (inference mode)
            for b_idx, result in enumerate(raw):
                if result.boxes is not None and len(result.boxes):
                    boxes   = result.boxes.xyxy.to(device)
                    scores  = result.boxes.conf.to(device)
                    classes = result.boxes.cls.long().to(device)
                    # Filter by confidence
                    keep = scores >= self.conf_thresh
                    detections[b_idx] = {
                        'boxes':   boxes[keep],
                        'scores':  scores[keep],
                        'classes': classes[keep],
                    }
        except Exception:
            # Tensor-output mode: raw is a tuple (pred_logits, ...) — NMS needed
            pass  # extend here if you use export mode
        return detections

    @staticmethod
    def _parse_dummy_boxes(pre_nms_boxes: torch.Tensor, device) -> list:
        """
        Converts a [B, N, 4] dummy-box tensor into the standard per-image
        list-of-dicts format that the ROI stage expects.
        """
        B, N, _ = pre_nms_boxes.shape
        return [
            {
                'boxes':   pre_nms_boxes[b].to(device),                          # [N, 4]
                'scores':  torch.ones(N, device=device),                          # dummy
                'classes': torch.zeros(N, dtype=torch.long, device=device),       # dummy
            }
            for b in range(B)
        ]


# ──────────────────────────────────────────────────────────────────────────────
#  MockYOLO  —  offline shape-validation without weights or GPU
# ──────────────────────────────────────────────────────────────────────────────
class MockYOLO(nn.Module):
    """
    Lightweight stub that mimics the spatial dimensions of YOLO26n's neck
    outputs so the ROI Align pipeline can be validated without real weights.

    Each `neck_pX` layer is a simple Conv2d that produces the correct channel
    count; the hook fires on its output just as it would on the real neck layer.
    """
    def __init__(self):
        super().__init__()
        # One lightweight conv per scale to carry the correct channel count
        self.neck_p3 = nn.Conv2d(3, 64,  1)   # stride-8  placeholder
        self.neck_p4 = nn.Conv2d(3, 128,  1)   # stride-16 placeholder
        self.neck_p5 = nn.Conv2d(3, 256,  1)   # stride-32 placeholder

    def forward(self, x: torch.Tensor):
        B, C, H, W = x.shape
        # Downsample input to each scale, pass through conv so hooks fire
        self.neck_p3(nn.functional.interpolate(x, size=(H // 8,  W // 8)))
        self.neck_p4(nn.functional.interpolate(x, size=(H // 16, W // 16)))
        self.neck_p5(nn.functional.interpolate(x, size=(H // 32, W // 32)))
        # Return an empty list so _parse_yolo_output degrades gracefully
        return []


def draw_detections_on_image(img_tensor: torch.Tensor, detections: list, save_path: str = None, show: bool = False):
    """
    Draws detection boxes and scores onto an image tensor and optionally saves/displays it.

    Args:
        img_tensor (Tensor): [3,H,W] or [1,3,H,W] with values in [0,1] or [0,255].
        detections (list): list of per-image detection dicts as returned by `forward()`.
        save_path (str|None): if provided, saves the annotated image to this path.
        show (bool): if True, calls the default image viewer (`PIL.Image.show()`).

    Returns:
        PIL.Image object with the drawings.
    """
    if img_tensor.dim() == 4:
        img = img_tensor[0]
    else:
        img = img_tensor
    img = img.detach().cpu()
    if img.max() <= 1.0:
        img = (img * 255.0).clamp(0, 255)
    arr = img.permute(1, 2, 0).numpy().astype(np.uint8)
    pil = Image.fromarray(arr)
    draw = ImageDraw.Draw(pil)
    try:
        font = ImageFont.load_default()
    except Exception:
        font = None

    # Assume detections corresponds to a single image (batch 0) when drawing one image
    # If multiple images are present, draw only the first by default.
    det = detections[0] if len(detections) > 0 else {'boxes': torch.zeros(0,4), 'scores': torch.zeros(0)}
    boxes = det.get('boxes', torch.zeros(0, 4)).cpu().numpy()
    scores = det.get('scores', torch.zeros(boxes.shape[0])).cpu().numpy() if 'scores' in det else None

    for i, box in enumerate(boxes):
        x1, y1, x2, y2 = box.tolist()
        draw.rectangle([x1, y1, x2, y2], outline=(255, 0, 0), width=2)
        label = f"{scores[i]:.2f}" if (scores is not None and i < len(scores)) else ""
        text_pos = (x1 + 2, max(0, y1 - 10))
        draw.text(text_pos, label, fill=(255, 255, 0), font=font)

    if save_path:
        pil.save(save_path)
        print(f"[INFO] Saved annotated image to: {save_path}")
    if show:
        try:
            from IPython.display import display
            display(pil)
        except Exception:
            pil.show()
    return pil


# ──────────────────────────────────────────────────────────────────────────────
#  __main__  —  Tensor-shape validation demo
# ──────────────────────────────────────────────────────────────────────────────
if __name__ == '__main__':
    import torch.nn.functional as F  # needed by MockYOLO

    print("=" * 65)
    print("  Task-Aware Object Detection — Stage 1 & 2 Shape Validation")
    print("=" * 65)

    # ── 1. Instantiate (will fall back to MockYOLO without real weights) ──────
    model = YOLOFeatureExtractor(
        weights_path='yolo26n.pt',
        roi_size=(7, 7),
        final_dim=128,
    )
    model.eval()

    # ── 2. Dummy image: batch=1, 3-channel, 640×640 ───────────────────────────
    img = torch.rand(1, 3, 640, 640)
    print(f"\n[INPUT]  Image tensor  : {tuple(img.shape)}")

    # ── 3. Dummy bounding boxes: 5 objects, xyxy absolute pixel coords ────────
    boxes = torch.tensor([[
        [ 50.0,  50.0, 150.0, 150.0],   # obj 0 – small,  top-left region
        [200.0, 100.0, 400.0, 300.0],   # obj 1 – medium, centre
        [ 10.0, 400.0,  60.0, 550.0],   # obj 2 – thin,   bottom-left
        [500.0, 500.0, 600.0, 600.0],   # obj 3 – small,  bottom-right
        [300.0,  20.0, 350.0,  80.0],   # obj 4 – small,  top-centre
    ]])   # shape [1, 5, 4]
    print(f"[INPUT]  Bounding boxes: {tuple(boxes.shape)}  (B=1, N=5, xyxy)")

    # ── 4. Forward pass ───────────────────────────────────────────────────────
    print("\n[RUN]    Executing Stage 1 + Stage 2 forward pass …")
    with torch.no_grad():
        out = model(img, pre_nms_boxes=boxes)

    phi_o = out['visual_fingerprints']

    # ── 5. Shape report ───────────────────────────────────────────────────────
    print("\n── Intermediate Feature Map Shapes ──────────────────────────────")
    for scale, feat in out['feature_maps'].items():
        print(f"  {scale}  (stride {YOLOFeatureExtractor.STRIDES[scale]:>2}): {tuple(feat.shape)}")

    print("\n── Final Output ─────────────────────────────────────────────────")
    print(f"  φ_o  (visual fingerprints) : {tuple(phi_o.shape)}")
    print(f"  roi_batch_indices          : {out['roi_batch_indices'].tolist()}")

    expected = (5, 128)
    if tuple(phi_o.shape) == expected:
        print(f"\n  ✅ SUCCESS — φ_o shape {tuple(phi_o.shape)} matches expected {expected}")
        print("     Ready to feed into the downstream Graph Attention Network (GAT).")
    else:
        print(f"\n  ❌ MISMATCH — got {tuple(phi_o.shape)}, expected {expected}")

    print("=" * 65)
