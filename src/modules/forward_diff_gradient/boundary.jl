# Boundary validation and exceptional input guarding for Custom Dual Numbers Forward-Mode Gradient Engine
# Module: forward_diff_gradient

def sanitize_forward_diff_gradient_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
