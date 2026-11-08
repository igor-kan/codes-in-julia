# Boundary validation and exceptional input guarding for Multithreaded Geometric Brownian Motion Simulator
# Module: monte_carlo_pricing

def sanitize_monte_carlo_pricing_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
