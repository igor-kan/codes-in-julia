# Boundary validation and exceptional input guarding for Type-Stable Sparse BiCGSTAB Iterative Linear Solver
# Module: sparse_bicgstab_jl

def sanitize_sparse_bicgstab_jl_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
