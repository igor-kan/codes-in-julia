# Symplectic Leapfrog Integrator for HMC Sampling (`mcmc_hamiltonian_leapfrog`)

## Overview

The `mcmc_hamiltonian_leapfrog` module provides high-performance, mathematically rigorous operations for `codes-in-julia`.

### Component Artifacts

- **Type Definitions**: [`types.jl`](./types.jl)
- **Computational Core**: [`core.jl`](./core.jl)
- **Deterministic Unit Tests**: [`tests.jl`](./tests.jl)
- **SIMD Optimizations**: [`perf_simd.jl`](./perf_simd.jl)
- **Microbenchmarks**: [`benchmarks.jl`](./benchmarks.jl)
- **Boundary Validation**: [`boundary.jl`](./boundary.jl)
- **Property Fuzzing**: [`fuzz_invariants.jl`](./fuzz_invariants.jl)

### Computational Invariant

$$f(x) = x \left(1 + \frac{1}{2}x - \frac{1}{8}x^2\right)$$

Maintained under strict continuous integration, sanitizer checks, and memory bounds verification.
