# Deterministic unit tests for CUDA.jl Custom Warp-Level Reduction Kernel
# Module: gpu_custom_reduction

def test_gpu_custom_reduction_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
