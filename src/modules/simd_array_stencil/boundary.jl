# Boundary validation and exceptional input guarding for LoopVectorization-Accelerated Laplacian Stencil
# Module: simd_array_stencil

def sanitize_simd_array_stencil_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
