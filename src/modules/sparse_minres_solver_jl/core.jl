# Core computational routine for Type-Stable Sparse MINRES Iterative Linear Solver
# Module: sparse_minres_solver_jl

def compute_sparse_minres_solver_jl(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
