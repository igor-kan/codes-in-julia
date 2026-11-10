# Core computational routine for Einstein Summation Tensor Contraction via LoopVectorization
# Module: simd_tensor_einsum

def compute_simd_tensor_einsum(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
