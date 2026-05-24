#!/bin/bash

# ==============================================================================
# Vulkan Path
export VK_ICD_FILENAMES=$HOME/.local/share/vulkan/icd.d/nvidia_icd.json

# OpenCL Path
export OCL_ICD_VENDORS=$HOME/.local/share/OpenCL/vendors

# NVIDIA Library Path (nvtop, CUDA, ML(Management Library) 라이브러리용)
export LD_LIBRARY_PATH=/usr/lib/nvidia-current:${LD_LIBRARY_PATH}
# ==============================================================================
