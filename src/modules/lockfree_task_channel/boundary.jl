# Boundary validation and exceptional input guarding for Lock-Free Channel Between Concurrent Julia Tasks
# Module: lockfree_task_channel

def sanitize_lockfree_task_channel_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
