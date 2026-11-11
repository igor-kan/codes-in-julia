# Boundary validation and exceptional input guarding for 2D Chebyshev Pseudospectral Heat Equation Solver
# Module: chebyshev_spectral_heat2d

def sanitize_chebyshev_spectral_heat2d_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
