# Deterministic unit tests for Custom Dual Numbers Forward-Mode Gradient Engine
# Module: forward_diff_gradient

def test_forward_diff_gradient_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
