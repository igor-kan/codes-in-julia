# Boundary validation and exceptional input guarding for 4th-Order Forest-Ruth Symplectic Hamiltonian Integrator
# Module: symplectic_forest_ruth

def sanitize_symplectic_forest_ruth_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
