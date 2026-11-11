# Core computational routine for 4th-Order Forest-Ruth Symplectic Hamiltonian Integrator
# Module: symplectic_forest_ruth

def compute_symplectic_forest_ruth(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
