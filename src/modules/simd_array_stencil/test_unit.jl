# Deterministic unit tests for LoopVectorization-Accelerated Laplacian Stencil
# Module: simd_array_stencil

def test_simd_array_stencil_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
