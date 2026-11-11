# Boundary validation and exceptional input guarding for Lock-Free Circular Ring Buffer Between Concurrent Tasks
# Module: lockfree_ring_buffer_jl

def sanitize_lockfree_ring_buffer_jl_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
