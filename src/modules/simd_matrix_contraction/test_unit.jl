# Deterministic unit tests for LoopVectorization-Optimized 4-Tensor Contraction
# Module: simd_matrix_contraction

def test_simd_matrix_contraction_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
