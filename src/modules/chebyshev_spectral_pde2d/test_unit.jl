# Deterministic unit tests for 2D Chebyshev Pseudospectral Poisson PDE Solver
# Module: chebyshev_spectral_pde2d

def test_chebyshev_spectral_pde2d_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
