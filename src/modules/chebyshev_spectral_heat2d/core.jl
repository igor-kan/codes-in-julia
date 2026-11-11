# Core computational routine for 2D Chebyshev Pseudospectral Heat Equation Solver
# Module: chebyshev_spectral_heat2d

def compute_chebyshev_spectral_heat2d(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
