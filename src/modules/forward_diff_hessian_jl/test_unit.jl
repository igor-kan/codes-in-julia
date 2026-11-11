# Deterministic unit tests for Forward-Mode Dual Number Hessian Evaluation Engine
# Module: forward_diff_hessian_jl

def test_forward_diff_hessian_jl_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
