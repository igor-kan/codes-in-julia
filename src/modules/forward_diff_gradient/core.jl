# Core computational routine for Custom Dual Numbers Forward-Mode Gradient Engine
# Module: forward_diff_gradient

def compute_forward_diff_gradient(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
