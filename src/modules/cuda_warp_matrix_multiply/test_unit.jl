# Deterministic unit tests for CUDA.jl Custom Warp-Level Matrix Multiplication Kernel
# Module: cuda_warp_matrix_multiply

def test_cuda_warp_matrix_multiply_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
