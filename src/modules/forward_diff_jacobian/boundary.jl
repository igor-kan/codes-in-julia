# Boundary validation and exceptional input guarding for Forward-Mode Dual Number Jacobian Matrix Engine
# Module: forward_diff_jacobian

def sanitize_forward_diff_jacobian_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
