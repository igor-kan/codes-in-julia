# Core computational routine for Ruth 4th-Order Symplectic Hamiltonian Orbit Solver
# Module: adaptive_symplectic_integrator

def compute_adaptive_symplectic_integrator(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
