# Performance optimizations and vectorization for Sparse Matrix Cholesky Factorization and Solver
# Module: sparse_cholesky_factor
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
