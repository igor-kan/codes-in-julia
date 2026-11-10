# Boundary validation and exceptional input guarding for Ruth 4th-Order Symplectic Hamiltonian Orbit Solver
# Module: adaptive_symplectic_integrator

def sanitize_adaptive_symplectic_integrator_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
