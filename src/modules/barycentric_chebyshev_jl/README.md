# Chebyshev Second-Kind Barycentric Polynomial Interpolator (`barycentric_chebyshev_jl`)

> Category: **Spectral Approximation** | Language: **Julia 1.10+**

## Overview

Interpolates smooth functions on [-1, 1] at Chebyshev extrema cos(j*pi/N) using alternating barycentric weights (-1)^j with half-weight endpoints.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) Chebyshev extrema weights + O(N) stable barycentric evaluation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Reproduces polynomials of degree <= N to machine accuracy without Runge oscillations.

## Module Architecture

| File | Lifecycle Role |
| :--- | :--- |
| `types.jl` | Stage 01 |
| `errors.jl` | Stage 02 |
| `interface.jl` | Stage 03 |
| `core.jl` | Stage 04 |
| `validation.jl` | Stage 05 |
| `fast_path.jl` | Stage 06 |
| `concurrent.jl` | Stage 07 |
| `invariants.jl` | Stage 08 |
| `unit_tests.jl` | Stage 09 |
| `property_tests.jl` | Stage 10 |
| `benchmark.jl` | Stage 11 |
| `README.md` | Stage 12 |

## Verification & Execution Example

```text
julia -e 'for f in ["types.jl","errors.jl","interface.jl","core.jl","validation.jl","fast_path.jl","concurrent.jl","invariants.jl","unit_tests.jl"]; include(f); end'
```

---
© 2026 Igor Kan
