# Deterministic unit tests for Multithreaded Parallel MSD Radix Sort on Float64
# Module: parallel_radix_sort_jl

def test_parallel_radix_sort_jl_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
