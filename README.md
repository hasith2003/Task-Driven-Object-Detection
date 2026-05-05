# Task-Driven Object Detection on FPGA
## DVCon India 2026 Design Contest

This repository contains our implementation for the DVCon India 2026 Design Contest.
We present a hardware-aware, task-driven object detection pipeline that selectively detects
and prioritizes objects relevant to a given natural language task description,
targeting deployment on the Genesys-2 FPGA board with the CDAC VEGA processor.

> **Status:** Ongoing project — Stage 1 of the DVCon India 2026 Design Contest successfully cleared.
> Physical hardware implementation on FPGA is pending.

---

## Problem Background

Conventional object detection systems are **task-agnostic** — they detect all objects in a
scene regardless of context, leading to:
- Reduced decision relevance in goal-directed scenarios
- Inefficient computation on resource-constrained edge devices
- Inability to adapt dynamically based on semantic task input

**Example:** Given the task *"Make a sandwich"*, a task-driven system should prioritize
detecting `bread`, `knife`, and `plate` — not every object in the scene.

This is intuitive for humans but highly challenging for automated systems and robots.

> Reference: *"What Object Should I Use? - Task Driven Object Detection"*
> https://doi.org/10.48550/arXiv.1904.03000

---

## Contest Problem Statement

| Requirement | Details |
| :--- | :--- |
| **Dataset** | COCO Dataset with 14 defined tasks (per reference work) |
| **Input** | Image + Task description (text prompt) |
| **Output** | Most appropriate object(s) for the given task |
| **Edge Target** | Genesys-2 FPGA board with CDAC VEGA Processor IP |
| **Key Constraint** | Lightweight, edge-compatible inference pipeline |

---

## Our Proposed Pipeline

### Architectural Overview

| Component | Baseline (Original Paper) | **Our DVCON Pipeline** |
| :--- | :--- | :--- |
| **Backbone** | Faster-RCNN + ResNet50 | **YOLOv2-6n** |
| **Graph Engine** | GGNN | **Multi-Head GAT** |
| **Language Grounding** | — | **Lightweight Text Encoder (TinyBERT / CLIP-text)** |
| **Deployment Target** | GPU / High-End PC | **Genesys-2 FPGA + VEGA Processor** |

### Pipeline Flow

```
Text Task Prompt
      │
      ▼
Lightweight Text Encoder (TinyBERT / CLIP-text)
      │
      ▼  Task Feature Vector

Input Image
      │
      ▼
YOLOv2-6n (QAT + Pruned) ──► Region Proposals + Class Scores
      │
      ▼
Multi-Head Graph Attention Network (GAT)
  [Models object-task relevance relationships]
      │
      ▼
Task-Conditioned Scoring & Filtering
      │
      ▼
Output: Most Relevant Object(s) for Given Task
```

---

## Current Progress

### Software & Optimization (Active)

- **YOLOv2-6n Training:** Currently training on COCO dataset with:
  - **Quantization Aware Training (QAT)** — INT8/INT16 hybrid precision
  - **Structured Pruning** — removing redundant parameters for FPGA fit
- **GAT Implementation:** Multi-Head Graph Attention Network integrated
  for parallelized object-task reasoning across the 14 defined tasks
- **Text Encoder Integration:** Evaluating TinyBERT and CLIP-text for
  lightweight task feature extraction compatible with edge constraints

### Hardware Implementation (Planned)

- **VEGA Processor Integration:** Mapping inference pipeline onto the
  CDAC VEGA Processor IP on Genesys-2 board
- **Custom Accelerator:** Designing a novel accelerator for GAT and
  YOLO inference stages targeting reduced latency and power consumption
- **Architecture:** Optimized for stationary-weight systolic arrays
  and NMS-free detection

---

## Optimization Strategy

| Strategy | Details |
| :--- | :--- |
| **Quantization** | Float32 → INT8/INT16 hybrid via QAT |
| **Pruning** | Structured pruning to fit BRAM and DSP slice budget |
| **Parallelism** | Multi-Head GAT replaces serial GGNN bottlenecks |
| **NMS-Free Detection** | Reduces post-processing latency on edge hardware |

---

## Evaluation Targets (Per Contest Criteria)

| Criterion | Our Strategy |
| :--- | :--- |
| **Novelty** | Task-conditioned GAT scoring with lightweight LM grounding |
| **Accuracy & Relevance** | Validated on 14 COCO tasks from reference work |
| **Inference Latency** | Minimized via QAT, pruning, and custom FPGA accelerator |
| **FPGA Utilization** | Optimized for Genesys-2 BRAM, DSP, and LUT constraints |
| **Power Consumption** | INT8 precision and pruning reduce dynamic power |

---

## Repository Structure

```
Task-Driven-Object-Detection/
│
├── DVCON_Pipeline.ipynb       # Main pipeline notebook
├── README.md                  # This file
├── models/                    # YOLOv2-6n + GAT model definitions
├── training/                  # QAT and pruning training scripts
├── text_encoder/              # Lightweight task encoder integration
└── hardware/                  # FPGA architecture notes (planned)
```

---

## References

1. Sawatzky et al., *"What Object Should I Use? - Task Driven Object Detection"*,
   CVPR 2019. https://doi.org/10.48550/arXiv.1904.03000
2. DVCon India 2026 Design Contest Problem Statement
3. CDAC VEGA Processor Documentation
4. COCO Dataset — https://cocodataset.org
