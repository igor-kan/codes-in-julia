# Core computational routine for Forward-Mode Dual Number Jacobian Matrix Engine
# Module: forward_diff_jacobian

def compute_forward_diff_jacobian(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
