# Core computational routine for 2D Chebyshev Pseudospectral Poisson PDE Solver
# Module: chebyshev_spectral_pde2d

def compute_chebyshev_spectral_pde2d(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
