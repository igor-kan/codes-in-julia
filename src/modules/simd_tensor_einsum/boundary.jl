# Boundary validation and exceptional input guarding for Einstein Summation Tensor Contraction via LoopVectorization
# Module: simd_tensor_einsum

def sanitize_simd_tensor_einsum_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
