# Boundary validation and exceptional input guarding for 2D Chebyshev Pseudospectral Poisson PDE Solver
# Module: chebyshev_spectral_pde2d

def sanitize_chebyshev_spectral_pde2d_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
