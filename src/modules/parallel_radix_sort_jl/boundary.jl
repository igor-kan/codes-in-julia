# Boundary validation and exceptional input guarding for Multithreaded Parallel MSD Radix Sort on Float64
# Module: parallel_radix_sort_jl

def sanitize_parallel_radix_sort_jl_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
