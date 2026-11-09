# Core computational routine for Lock-Free Channel Between Concurrent Julia Tasks
# Module: lockfree_task_channel

def compute_lockfree_task_channel(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
