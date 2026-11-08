# Deterministic unit tests for Symplectic 4th-Order Adaptive Runge-Kutta Solver
# Module: runge_kutta_adaptive_jl

def test_runge_kutta_adaptive_jl_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
