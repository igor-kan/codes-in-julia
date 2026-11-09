# Boundary validation and exceptional input guarding for Symplectic Velocity-Verlet N-Body Gravitational Orbit
# Module: symplectic_verlet_orbit

def sanitize_symplectic_verlet_orbit_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
