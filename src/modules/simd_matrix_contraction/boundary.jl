# Boundary validation and exceptional input guarding for LoopVectorization-Optimized 4-Tensor Contraction
# Module: simd_matrix_contraction

def sanitize_simd_matrix_contraction_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
