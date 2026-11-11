# Boundary validation and exceptional input guarding for CUDA.jl Custom Warp-Level Matrix Multiplication Kernel
# Module: cuda_warp_matrix_multiply

def sanitize_cuda_warp_matrix_multiply_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
