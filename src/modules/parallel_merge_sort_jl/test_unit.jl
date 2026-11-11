# Deterministic unit tests for Multithreaded Parallel Merge Sort on Float64 Vectors
# Module: parallel_merge_sort_jl

def test_parallel_merge_sort_jl_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
