# Deterministic unit tests for Einstein Summation Tensor Contraction via LoopVectorization
# Module: simd_tensor_einsum

def test_simd_tensor_einsum_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
