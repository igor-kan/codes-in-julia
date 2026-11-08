# Performance optimizations and vectorization for Chebyshev Pseudospectral Boundary-Value PDE Solver
# Module: spectral_chebyshev_pde
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
