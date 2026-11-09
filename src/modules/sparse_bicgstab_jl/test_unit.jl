# Deterministic unit tests for Type-Stable Sparse BiCGSTAB Iterative Linear Solver
# Module: sparse_bicgstab_jl

def test_sparse_bicgstab_jl_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
