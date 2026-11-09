# Core computational routine for CUDA.jl Custom Warp-Level Reduction Kernel
# Module: gpu_custom_reduction

def compute_gpu_custom_reduction(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
