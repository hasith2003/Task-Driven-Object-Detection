# Task Driven Object Detection on FPGA
## DVCON 2026 Pipeline Implementation

This repository features a hardware-aware implementation of multimodal emotion recognition, significantly optimized from the original paper's architecture to meet real-time edge constraints.

> **Note:** This project is a work-in-progress. We have finalized the optimized architecture and are currently in the training phase. Physical hardware implementation on FPGA is pending.

## Architectural Comparison

| Component | Original Paper | **My DVCON Pipeline** |
| :--- | :--- | :--- |
| **Backbone** | Faster-RCNN + ResNet50 | **YOLOv26n** |
| **Graph Engine** | GGNN | **Multi-Head GAT** |
| **Deployment Target** | GPU / High-End PC | **Kintex-7 FPGA (Planned)** |

## Current Progress

### 1. Software & Optimization (Active)
* **YOLOv26n Training:** Currently training with **Quantization Aware Training (QAT)** and **Pruning** to ensure the model survives the transition to hardware without massive accuracy loss.
* **GAT Implementation:** Multi-Head Graph Attention Network logic is integrated for parallelized reasoning.

### 2. Hardware Implementation (In Progress)
* **Architecture:** Optimized for stationary-weight systolic arrays and NMS-free detection.
* **Status:** Physical hardware synthesis and FPGA implementation are currently under development.

## Optimization Strategy
* **Quantization:** Moving from Float32 to **INT8/INT16** hybrid precision.
* **Pruning:** Removing redundant parameters to fit within the limited BRAM and DSP slices of edge FPGA devices.
* **Parallelism:** Utilizing the parallel nature of Multi-Head GATs to replace the serial/recurrent bottlenecks of GGNNs.
