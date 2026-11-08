# Core computational routine for Symplectic 4th-Order Adaptive Runge-Kutta Solver
# Module: runge_kutta_adaptive_jl

def compute_runge_kutta_adaptive_jl(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
