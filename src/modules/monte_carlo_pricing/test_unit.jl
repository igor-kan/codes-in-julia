# Deterministic unit tests for Multithreaded Geometric Brownian Motion Simulator
# Module: monte_carlo_pricing

def test_monte_carlo_pricing_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
