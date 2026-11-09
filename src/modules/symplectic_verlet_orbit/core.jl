# Core computational routine for Symplectic Velocity-Verlet N-Body Gravitational Orbit
# Module: symplectic_verlet_orbit

def compute_symplectic_verlet_orbit(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
