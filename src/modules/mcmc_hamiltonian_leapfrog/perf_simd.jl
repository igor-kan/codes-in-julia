# Performance optimizations and vectorization for Symplectic Leapfrog Integrator for HMC Sampling
# Module: mcmc_hamiltonian_leapfrog
# - Stride-1 sequential memory access
# - In-place scratchpad reuse to avoid garbage collection pressure
# - Cacheline blocking for problem sizes exceeding L2 capacity
