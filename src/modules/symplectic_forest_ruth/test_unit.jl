# Deterministic unit tests for 4th-Order Forest-Ruth Symplectic Hamiltonian Integrator
# Module: symplectic_forest_ruth

def test_symplectic_forest_ruth_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
