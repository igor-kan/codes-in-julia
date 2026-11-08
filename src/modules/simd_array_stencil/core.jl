# Core computational routine for LoopVectorization-Accelerated Laplacian Stencil
# Module: simd_array_stencil

def compute_simd_array_stencil(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
