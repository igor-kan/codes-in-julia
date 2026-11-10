# Boundary validation and exceptional input guarding for Multifrontal Sparse QR Decomposition with Column Ordering
# Module: sparse_qr_decomposition

def sanitize_sparse_qr_decomposition_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
