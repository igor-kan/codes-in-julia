# Core computational routine for Multithreaded Geometric Brownian Motion Simulator
# Module: monte_carlo_pricing

def compute_monte_carlo_pricing(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
