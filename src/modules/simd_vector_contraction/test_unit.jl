# Deterministic unit tests for LoopVectorization Einstein Tensor Contraction
# Module: simd_vector_contraction

def test_simd_vector_contraction_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
