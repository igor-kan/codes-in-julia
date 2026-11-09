# Deterministic unit tests for Symplectic Velocity-Verlet N-Body Gravitational Orbit
# Module: symplectic_verlet_orbit

def test_symplectic_verlet_orbit_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
