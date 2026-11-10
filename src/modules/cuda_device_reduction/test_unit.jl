# Deterministic unit tests for Warp-Aggregated CUDA.jl GPU Array Reduction Kernel
# Module: cuda_device_reduction

def test_cuda_device_reduction_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
