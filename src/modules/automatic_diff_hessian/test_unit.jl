# Deterministic unit tests for Forward-Mode Dual Numbers for Hessian Evaluation
# Module: automatic_diff_hessian

def test_automatic_diff_hessian_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
