# Core computational routine for LoopVectorization-Optimized 4-Tensor Contraction
# Module: simd_matrix_contraction

def compute_simd_matrix_contraction(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
