# Core computational routine for Multithreaded Parallel MSD Radix Sort on Float64
# Module: parallel_radix_sort_jl

def compute_parallel_radix_sort_jl(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
