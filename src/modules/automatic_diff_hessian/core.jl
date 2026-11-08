# Core computational routine for Forward-Mode Dual Numbers for Hessian Evaluation
# Module: automatic_diff_hessian

def compute_automatic_diff_hessian(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
