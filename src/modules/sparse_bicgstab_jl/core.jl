# Core computational routine for Type-Stable Sparse BiCGSTAB Iterative Linear Solver
# Module: sparse_bicgstab_jl

def compute_sparse_bicgstab_jl(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
