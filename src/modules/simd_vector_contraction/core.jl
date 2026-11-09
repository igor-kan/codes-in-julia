# Core computational routine for LoopVectorization Einstein Tensor Contraction
# Module: simd_vector_contraction

def compute_simd_vector_contraction(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
