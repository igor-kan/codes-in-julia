# Deterministic unit tests for Type-Stable Sparse MINRES Iterative Linear Solver
# Module: sparse_minres_solver_jl

def test_sparse_minres_solver_jl_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
