# Core computational routine for Multithreaded Parallel Merge Sort on Float64 Vectors
# Module: parallel_merge_sort_jl

def compute_parallel_merge_sort_jl(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
