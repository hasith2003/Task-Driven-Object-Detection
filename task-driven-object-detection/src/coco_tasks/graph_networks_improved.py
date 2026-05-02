from typing import Tuple

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch import Tensor
from torch.utils import model_zoo
from torchvision.models.resnet import ResNet, Bottleneck, model_urls


class ResNetWithoutFC(ResNet):
    def __init__(self, block, layers, num_classes=1000):
        super().__init__(block, layers, num_classes)

    def forward(self, x):
        x = self.conv1(x)
        x = self.bn1(x)
        x = self.relu(x)
        x = self.maxpool(x)

        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)

        x = self.avgpool(x)
        x = x.view(x.size(0), -1)

        return x


def myresnet101(pretrained=False, **kwargs):
    """Constructs a ResNet-101 model.

    Args:
        pretrained (bool): If True, returns a model pre-trained on ImageNet
    """
    model = ResNetWithoutFC(Bottleneck, [3, 4, 23, 3], **kwargs)
    if pretrained:
        model.load_state_dict(model_zoo.load_url(model_urls["resnet101"]))
    return model


class ExtractorResNet(nn.Module):
    out_channels = 2048

    def __init__(self):
        super().__init__()
        self.extractor = myresnet101(pretrained=True)

    def forward(self, x: Tensor) -> Tensor:
        return self.extractor.forward(x)

    def __repr__(self) -> str:
        return self.__class__.__name__


class AllLinearAggregator(nn.Module):
    def __init__(self, in_features: int, out_features: int):
        super().__init__()
        self.in_features = in_features
        self.out_features = out_features
        self.drop = nn.Dropout(0.25)
        self.layer = nn.Linear(
            in_features=self.in_features, out_features=self.out_features
        )

    def forward(self, h_t: Tensor, phi_o: Tensor, d: Tensor) -> Tensor:
        """
        :param h_t: [B x in_features]
        :param phi_o: not used.
        :param d: detection scores. [B x 1]
        :return: x_t[v] = \sum_v'{layer(h_t[v']}
                 [B x out_features]
        """
        B = h_t.size(0)
        transformed_h_t = self.layer(h_t)  # [B x out_features]
        x_t_v = torch.sum(transformed_h_t, dim=0, keepdim=True)  # [1 x out_features]
        x_t = x_t_v.repeat(B, 1)  # [B x out_features]

        x_t -= transformed_h_t

        x_t = self.drop(x_t)

        return x_t

    def __repr__(self) -> str:
        return "name:{}-inf:{}-outf:{}".format(
            self.__class__.__name__, self.in_features, self.out_features
        )


class AllLinearAggregatorWeightedWithDetScore(nn.Module):
    def __init__(self, in_features: int, out_features: int):
        super().__init__()
        self.in_features = in_features
        self.out_features = out_features
        self.drop = nn.Dropout(0.25)
        self.layer = nn.Linear(
            in_features=self.in_features, out_features=self.out_features
        )

    def forward(self, h_t: Tensor, phi_o: Tensor, d: Tensor) -> Tensor:
        """
        :param h_t: [B x in_features]
        :param phi_o: not used.
        :param d: the detection scores. [B x 1]
        :return: x_t[v] = \sum_v'{layer(h_t[v']}
                 [B x out_features]
        """
        B = h_t.size(0)
        # Here I multiply with d to scale down un certain detections
        transformed_h_t = self.layer(h_t) * d  # [B x out_features]
        x_t_v = torch.sum(transformed_h_t, dim=0, keepdim=True)  # [1 x out_features]
        x_t = x_t_v.repeat(B, 1)  # [B x out_features]

        x_t -= transformed_h_t

        x_t = self.drop(x_t)

        return x_t

    def __repr__(self) -> str:
        return "name:{}-inf:{}-outf:{}".format(
            self.__class__.__name__, self.in_features, self.out_features
        )


class InitializerMul(nn.Module):
    def __init__(self, h_dim: int, phi_dim: int = 1024, c_dim: int = 90):
        super().__init__()
        self.h_dim = h_dim
        self.phi_dim = phi_dim
        self.c_dim = c_dim
        self.non_lin = F.relu
        self.phi_layer = nn.Linear(
            in_features=self.phi_dim, out_features=self.h_dim, bias=False
        )
        self.c_layer = nn.Linear(
            in_features=self.c_dim, out_features=self.h_dim, bias=False
        )

    def forward(self, phi_o: Tensor, c_hat: Tensor) -> Tensor:
        """
        :param phi_o: the extracted features from boxes. [B x phi_dim]
        :param c_hat: the one_hot encoding of the class of the boxes. [B x c_dim]
        :return: [B x h_dim]
        """
        return self.non_lin(self.phi_layer(phi_o)) * self.non_lin(self.c_layer(c_hat))

    def __repr__(self) -> str:
        return "name:{}-nonlin:{}".format(
            self.__class__.__name__, self.non_lin.__name__
        )




class InitializerMLP(nn.Module):
    def __init__(self, h_dim: int, phi_dim: int = 2048, c_dim: int = 90):
        super().__init__()
        self.h_dim = h_dim
        self.phi_dim = phi_dim
        self.c_dim = c_dim
        
        # We concatenate ResNet (2048) + Class (90) = 2138
        self.fusion_mlp = nn.Sequential(
            nn.Linear(phi_dim + c_dim, 512),
            nn.ReLU(),
            nn.Dropout(0.1), # Optional: keeps it from overfitting
            nn.Linear(512, h_dim)
        )

    def forward(self, phi_o: Tensor, c_hat: Tensor) -> Tensor:
        """
        :param phi_o: [B x 2048]
        :param c_hat: [B x 90]
        :return: [B x h_dim]
        """
        # Step 1: Concatenate the visual and semantic features
        combined = torch.cat([phi_o, c_hat], dim=1) 
        
        # Step 2: Pass through the MLP to project to h_dim (128)
        return self.fusion_mlp(combined)

    def __repr__(self) -> str:
        return "name:{}-h_dim:{}".format(self.__class__.__name__, self.h_dim)


class InitializerNoClass(nn.Module):
    def __init__(self, h_dim: int, phi_dim: int = 1024):
        super().__init__()
        self.h_dim = h_dim
        self.phi_dim = phi_dim
        self.non_lin = F.relu
        self.phi_layer = nn.Linear(
            in_features=self.phi_dim, out_features=self.h_dim, bias=False
        )

    def forward(self, phi_o: Tensor, c_hat: Tensor) -> Tensor:
        """
        :param phi_o: the extracted features from boxes. [B x phi_dim]
        :param c_hat: not used.
        :return: [B x h_dim]
        """
        return self.non_lin(self.phi_layer(phi_o))

    def __repr__(self) -> str:
        return "name:{}-nonlin:{}".format(
            self.__class__.__name__, self.non_lin.__name__
        )


class InitializerNoIMG(nn.Module):
    def __init__(self, h_dim: int, phi_dim: int = 1024, c_dim: int = 90):
        super().__init__()
        self.h_dim = h_dim
        self.c_dim = c_dim
        self.non_lin = F.relu
        self.c_layer = nn.Linear(
            in_features=self.c_dim, out_features=self.h_dim, bias=False
        )

    def forward(self, phi_o: Tensor, c_hat: Tensor) -> Tensor:
        """
        :param phi_o: the extracted features from boxes. [B x phi_dim]
        :param c_hat: the one_hot encoding of the class of the boxes. [B x c_dim]
        :return: [B x h_dim]
        """
        return self.non_lin(self.c_layer(c_hat))

    def __repr__(self) -> str:
        return "name:{}-nonlin:{}".format(
            self.__class__.__name__, self.non_lin.__name__
        )


class OutputModelFirstLast(nn.Module):
    def __init__(self, h_dim: int, num_tasks: int, hidden_dim: int = 128):
        super().__init__()
        self.h_dim = h_dim
        self.num_tasks = num_tasks
        self.hidden_dim = hidden_dim
        self.fc1 = nn.Linear(in_features=self.h_dim * 2, out_features=self.hidden_dim)
        self.drop = nn.Dropout(0.25)
        self.fc2 = nn.Linear(in_features=self.hidden_dim, out_features=self.num_tasks)

    # noinspection PyPep8Naming
    def forward(self, h_0: Tensor, h_T: Tensor) -> Tensor:
        """
        :param h_0: the initial hidden state of the nodes. [B x h_dim]
        :param h_T: the final hidden state of the nodes. [B x h_dim]
        :return: The logits for each task. [B x num_tasks]
        """
        inp = torch.cat((h_0, h_T), dim=1)  # [B x h_dim * 2]
        inp = F.relu(self.fc1.forward(inp))  # [B x hidden_dim]
        inp = self.drop(inp)  # [B x hidden_dim]
        return self.fc2.forward(inp)  # [B x num_tasks]

    def __repr__(self) -> str:
        return "name:{}-numhidden:{}".format(self.__class__.__name__, self.hidden_dim)


class GGNN(nn.Module):
    def __init__(
        self,
        initializer: nn.Module,
        aggregator: nn.Module,
        output_model: nn.Module,
        max_steps: int = 3,
        h_dim: int = 128,
        x_dim: int = 128,
        class_dim: int = 90,
    ):
        super().__init__()
        self.initializer = initializer
        self.aggregator = aggregator
        self.output_model = output_model
        self.max_steps = max_steps
        self.h_dim = h_dim
        self.x_dim = x_dim
        self.class_dim = class_dim
        self.loss = nn.BCEWithLogitsLoss(reduction="mean")

        self.extractor = ExtractorResNet()
        self.propagator = nn.GRUCell(input_size=self.x_dim, hidden_size=self.h_dim)

    def forward(self, o: Tensor, c: Tensor, d: Tensor) -> Tensor:
        """
        :param o: the image crops [B x 3 x H x W]
        :param c: the one_hot encoding of the class labels [B x class_dim]
        :param d: the detection score [B x 1]
        :return: returns the logits [B x num_classes]
        """
        phi_o = self.extractor.forward(o)  # [B x phi_dim]
        h_0 = self.initializer.forward(phi_o, c)  # [B x h_dim]

        h_t = h_0
        for i in range(self.max_steps):
            x_t = self.aggregator.forward(h_t, phi_o, d)
            h_t = self.propagator.forward(x_t, h_t)

        # noinspection PyPep8Naming
        h_T = h_t

        return self.output_model.forward(h_0, h_T)

    def estimate_probability(self, o: Tensor, c: Tensor, d: Tensor) -> Tensor:
        return torch.sigmoid(self.forward(o, c, d))

    def compute_loss(self, logits: Tensor, t: Tensor, m: Tensor) -> Tensor:
        """
        Computes the loss for all of the tasks.
        :param logits: [B x num_tasks]
        :param t: [B x num_tasks]
        :param m: [num_tasks]
        :return: [] loss.
        """
        loss = logits.new_zeros(())
        for ti in range(self.output_model.num_tasks):
            if m[ti]:
                loss += self._compute_single_loss(logits[:, ti], t[:, ti])

        return loss

    def _compute_single_loss(self, logits: Tensor, t: Tensor) -> Tensor:
        """
        Computes the loss for a single task.
        :param logits: [B]
        :param t: [B]
        :return: [] loss.
        """
        return self.loss.forward(logits, t)

    def __repr__(self) -> str:
        return "name:{}-init({})-agg({})-out({})-maxstep:{}".format(
            self.__class__.__name__,
            self.initializer.__repr__(),
            self.aggregator.__repr__(),
            self.output_model.__repr__(),
            self.max_steps,
        )


class GGNNBboxNoImg(nn.Module):
    """
    For CVPR rebuttal.
    """

    def __init__(
        self,
        initializer: nn.Module,
        aggregator: nn.Module,
        output_model: nn.Module,
        max_steps: int = 3,
        h_dim: int = 128,
        x_dim: int = 128,
        class_dim: int = 90,
    ):
        super().__init__()
        self.initializer = initializer
        self.aggregator = aggregator
        self.output_model = output_model
        self.max_steps = max_steps
        self.h_dim = h_dim
        self.x_dim = x_dim
        self.class_dim = class_dim
        self.loss = nn.BCEWithLogitsLoss(reduction="mean")

        self.extractor = nn.Linear(
            in_features=4, out_features=16
        )  # 16 is fixed here! back coding style!
        self.propagator = nn.GRUCell(input_size=self.x_dim, hidden_size=self.h_dim)

    def forward(self, bbox: Tensor, c: Tensor, d: Tensor) -> Tensor:
        """
        :param bbox: the normalized representation of the bbox [B x 4]
        :param c: the one_hot encoding of the class labels [B x class_dim]
        :param d: the detection score [B x 1]
        :return: returns the logits [B x num_classes]
        """
        phi_o = self.extractor.forward(bbox)  # [B x 16]
        h_0 = self.initializer.forward(phi_o, c)  # [B x h_dim]

        h_t = h_0
        for i in range(self.max_steps):
            x_t = self.aggregator.forward(h_t, phi_o, d)
            h_t = self.propagator.forward(x_t, h_t)

        # noinspection PyPep8Naming
        h_T = h_t

        return self.output_model.forward(h_0, h_T)

    def estimate_probability(self, bbox: Tensor, c: Tensor, d: Tensor) -> Tensor:
        return torch.sigmoid(self.forward(bbox, c, d))

    def compute_loss(self, logits: Tensor, t: Tensor, m: Tensor) -> Tensor:
        """
        Computes the loss for all of the tasks.
        :param logits: [B x num_tasks]
        :param t: [B x num_tasks]
        :param m: [num_tasks]
        :return: [] loss.
        """
        loss = logits.new_zeros(())
        for ti in range(self.output_model.num_tasks):
            if m[ti]:
                loss += self._compute_single_loss(logits[:, ti], t[:, ti])

        return loss

    def _compute_single_loss(self, logits: Tensor, t: Tensor) -> Tensor:
        """
        Computes the loss for a single task.
        :param logits: [B]
        :param t: [B]
        :return: [] loss.
        """
        return self.loss.forward(logits, t)

    def __repr__(self) -> str:
        return "name:{}-init({})-agg({})-out({})-maxstep:{}".format(
            self.__class__.__name__,
            self.initializer.__repr__(),
            self.aggregator.__repr__(),
            self.output_model.__repr__(),
            self.max_steps,
        )





class GGNNDiscLoss(nn.Module):
    def __init__(
        self,
        initializer: nn.Module,
        aggregator: nn.Module,
        output_model: nn.Module,
        max_steps: int = 3,
        h_dim: int = 128,
        x_dim: int = 128,
        class_dim: int = 90,
        fusion: str = "none",
    ):
        super().__init__()
        self.initializer = initializer
        self.aggregator = aggregator
        self.output_model = output_model
        self.max_steps = max_steps
        self.h_dim = h_dim
        self.x_dim = x_dim
        self.class_dim = class_dim
        self.fusion = fusion
        self.loss = nn.BCEWithLogitsLoss(reduction="mean")

        self.extractor = ExtractorResNet()
        self.propagator = nn.GRUCell(input_size=self.x_dim, hidden_size=self.h_dim)

        self.drop = nn.Dropout(0.25)
        self.aux_fc = nn.Linear(
            self.extractor.out_channels, self.output_model.num_tasks
        )



    def forward(self, o: Tensor, c: Tensor, d: Tensor) -> Tuple[Tensor, Tensor]:
        """
        :param o: the image crops [B x 3 x H x W]
        :param c: the one_hot encoding of the class labels [B x class_dim]
        :param d: the detection score [B x 1]
        :return: returns the logits [B x num_classes]
        """

         # 1. THE RESNET OUTPUT: 
        # The cropped images 'o' go through the ResNet.
        # phi_o is the actual raw output of the ResNet 
        # (a 2048-dimensional visual feature vector).
        phi_o = self.extractor.forward(o)  # [B x phi_dim]

        h_0 = self.initializer.forward(phi_o, c)  # [B x h_dim]

        h_t = h_0
        for i in range(self.max_steps):
            x_t = self.aggregator.forward(h_t, phi_o, d)
            h_t = self.propagator.forward(x_t, h_t)

        # noinspection PyPep8Naming
        h_T = h_t

        # 2. THE AUX LOGITS:
        # We take that exact same ResNet output (phi_o), apply a Dropout layer to it,
        # and pass it through a single Fully Connected (Linear) layer called `aux_fc`.
        aux_logits = self.aux_fc(self.drop(phi_o))

        final_logits = self.output_model.forward(h_0, h_T)

        return final_logits, aux_logits

    def get_features(self, o: Tensor, c: Tensor, d: Tensor) -> Tuple[Tensor, Tensor]:
        phi_o = self.extractor.forward(o)  # [B x phi_dim]
        h_0 = self.initializer.forward(phi_o, c)  # [B x h_dim]

        h_t = h_0
        for i in range(self.max_steps):
            x_t = self.aggregator.forward(h_t, phi_o, d)
            h_t = self.propagator.forward(x_t, h_t)

        # noinspection PyPep8Naming
        h_T = h_t

        return h_0, h_T

    def estimate_probability(self, o: Tensor, c: Tensor, d: Tensor) -> Tensor:
        final_logits, aux_logits = self.forward(o, c, d)
        if self.fusion == "none":
            return torch.sigmoid(final_logits)
        elif self.fusion == "avg":
            return (torch.sigmoid(final_logits) + torch.sigmoid(aux_logits)) / 2
        else:
            raise Exception("Invalid fusion")

    def compute_loss(
        self, logits: Tuple[Tensor, Tensor], t: Tensor, m: Tensor
    ) -> Tensor:
        """
        Computes the loss for all of the tasks.
        :param logits: [B x num_tasks]
        :param t: [B x num_tasks]
        :param m: [num_tasks]
        :return: [] loss.
        """
        loss = logits[0].new_zeros(())
        for ti in range(self.output_model.num_tasks):
            if m[ti]:
                final_logits, aux_logits = logits[0][:, ti], logits[1][:, ti]
                loss += self._compute_single_loss(final_logits, aux_logits, t[:, ti])

        return loss

    def _compute_single_loss(
        self, final_logits: Tensor, aux_logits: Tensor, t: Tensor
    ) -> Tensor:
        alpha, beta = 10, 1
        return (
            alpha * self.loss.forward(final_logits, t)
            + beta * self.loss.forward(aux_logits, t)
        ) / (alpha + beta)

    def __repr__(self) -> str:
        return "name:{}-init({})-agg({})-out({})-maxstep:{}".format(
            self.__class__.__name__,
            self.initializer.__repr__(),
            self.aggregator.__repr__(),
            self.output_model.__repr__(),
            self.max_steps,
        )
        
        
        
class GATLayer(nn.Module):
    def __init__(self, in_features, out_features, dropout=0.25, alpha=0.2, concat=True):
        super(GATLayer, self).__init__()
        self.W = nn.Linear(in_features, out_features, bias=False)
        self.a = nn.Parameter(torch.empty(size=(2 * out_features, 1)))
        nn.init.xavier_uniform_(self.a.data, gain=1.414)
        self.leakyrelu = nn.LeakyReLU(alpha)
        self.dropout = nn.Dropout(dropout)

    def forward(self, h):
        Wh = self.W(h) # [B x out_features]
        B = Wh.size(0)
        out_feat = Wh.size(1)

        # 1. Create pairs for attention
        # Wh_repeated_interleaved: [B*B, out_feat] -> (1,1,1, 2,2,2, 3,3,3...)
        # Wh_repeated_tiled: [B*B, out_feat] -> (1,2,3, 1,2,3, 1,2,3...)
        Wh_interleaved = Wh.repeat_interleave(B, dim=0)
        Wh_tiled = Wh.repeat(B, 1)

        # 2. Concatenate them to get [B*B, 2 * out_feat]
        # Then reshape to [B, B, 2 * out_feat]
        a_input = torch.cat([Wh_interleaved, Wh_tiled], dim=1).view(B, B, 2 * out_feat)

        # 3. Apply attention weights
        e = self.leakyrelu(torch.matmul(a_input, self.a).squeeze(2)) # [B, B]
        
        attention = F.softmax(e, dim=1)
        h_prime = torch.matmul(self.dropout(attention), Wh) # [B, out_feat]
        
        return F.elu(h_prime)

class GATDiscLoss(GGNNDiscLoss): # Inherit to keep ResNet extractor and loss logic
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Replace the GRU propagator with a GAT Layer
        self.num_heads = 2  # start with 2–4

        self.gat_heads = nn.ModuleList([
            GATLayer(self.h_dim, self.h_dim // self.num_heads)
            for _ in range(self.num_heads)
        ])

        self.proj = nn.Linear(self.h_dim, self.h_dim)
        #self.norm = nn.LayerNorm(self.h_dim)


    def forward(self, o: Tensor, c: Tensor, d: Tensor) -> Tuple[Tensor, Tensor]:
        phi_o = self.extractor.forward(o)
        h_0 = self.initializer.forward(phi_o, c)

        h_t = h_0
        for i in range(self.max_steps):

            residual = h_t

            h_in = h_t   # 🔥 pre-norm

            head_outputs = [head(h_in) for head in self.gat_heads]
            h_t = torch.cat(head_outputs, dim=1)
            h_t = self.proj(h_t)

            h_t = residual + h_t

        h_T = h_t
        aux_logits = self.aux_fc(self.drop(phi_o))
        final_logits = self.output_model.forward(h_0, h_T)
        return final_logits, aux_logits
