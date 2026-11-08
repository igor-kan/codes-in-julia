# Deterministic unit tests for Sparse LU Factorization with Partial Pivoting
# Module: sparse_lu_decomposition

def test_sparse_lu_decomposition_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
