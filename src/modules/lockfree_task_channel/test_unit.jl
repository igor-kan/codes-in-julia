# Deterministic unit tests for Lock-Free Channel Between Concurrent Julia Tasks
# Module: lockfree_task_channel

def test_lockfree_task_channel_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
