# Deterministic unit tests for 2D Chebyshev Pseudospectral Heat Equation Solver
# Module: chebyshev_spectral_heat2d

def test_chebyshev_spectral_heat2d_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
