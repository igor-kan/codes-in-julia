# Boundary validation and exceptional input guarding for Forward-Mode Dual Numbers for Hessian Evaluation
# Module: automatic_diff_hessian

def sanitize_automatic_diff_hessian_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
