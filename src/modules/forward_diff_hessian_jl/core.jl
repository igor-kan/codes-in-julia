# Core computational routine for Forward-Mode Dual Number Hessian Evaluation Engine
# Module: forward_diff_hessian_jl

def compute_forward_diff_hessian_jl(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
