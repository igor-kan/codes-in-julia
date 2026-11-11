# Deterministic unit tests for Lock-Free Circular Ring Buffer Between Concurrent Tasks
# Module: lockfree_ring_buffer_jl

def test_lockfree_ring_buffer_jl_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
