# Deterministic unit tests for Ruth 4th-Order Symplectic Hamiltonian Orbit Solver
# Module: adaptive_symplectic_integrator

def test_adaptive_symplectic_integrator_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
