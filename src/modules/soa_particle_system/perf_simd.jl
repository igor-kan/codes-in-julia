# Performance optimizations and vectorization for Struct-of-Arrays Cache-Optimized Kinematic System
# Module: soa_particle_system
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
