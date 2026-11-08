# Boundary validation and exceptional input guarding for Sparse LU Factorization with Partial Pivoting
# Module: sparse_lu_decomposition

def sanitize_sparse_lu_decomposition_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
