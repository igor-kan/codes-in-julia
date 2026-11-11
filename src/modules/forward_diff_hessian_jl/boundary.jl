# Boundary validation and exceptional input guarding for Forward-Mode Dual Number Hessian Evaluation Engine
# Module: forward_diff_hessian_jl

def sanitize_forward_diff_hessian_jl_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
