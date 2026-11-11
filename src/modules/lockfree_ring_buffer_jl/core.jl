# Core computational routine for Lock-Free Circular Ring Buffer Between Concurrent Tasks
# Module: lockfree_ring_buffer_jl

def compute_lockfree_ring_buffer_jl(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
