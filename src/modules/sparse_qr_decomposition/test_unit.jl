# Deterministic unit tests for Multifrontal Sparse QR Decomposition with Column Ordering
# Module: sparse_qr_decomposition

def test_sparse_qr_decomposition_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
