# Performance optimizations and vectorization for Forward-Mode Automatic Differentiation Dual Numbers
# Module: dual_number_autodiff
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
