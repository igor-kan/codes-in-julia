# Boundary validation and exceptional input guarding for Symplectic 4th-Order Adaptive Runge-Kutta Solver
# Module: runge_kutta_adaptive_jl

def sanitize_runge_kutta_adaptive_jl_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
