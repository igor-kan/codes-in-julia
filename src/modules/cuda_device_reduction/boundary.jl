# Boundary validation and exceptional input guarding for Warp-Aggregated CUDA.jl GPU Array Reduction Kernel
# Module: cuda_device_reduction

def sanitize_cuda_device_reduction_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
