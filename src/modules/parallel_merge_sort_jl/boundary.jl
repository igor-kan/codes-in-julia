# Boundary validation and exceptional input guarding for Multithreaded Parallel Merge Sort on Float64 Vectors
# Module: parallel_merge_sort_jl

def sanitize_parallel_merge_sort_jl_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
