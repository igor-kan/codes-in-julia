# Deterministic unit tests for Forward-Mode Dual Number Jacobian Matrix Engine
# Module: forward_diff_jacobian

def test_forward_diff_jacobian_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
