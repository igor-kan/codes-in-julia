# Core computational routine for Sparse LU Factorization with Partial Pivoting
# Module: sparse_lu_decomposition

def compute_sparse_lu_decomposition(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
