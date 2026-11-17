# Richardson-Romberg Adaptive Quadrature Extrapolation (`romberg_extrapolation_jl`)

> Category: **Numerical Quadrature** | Language: **Julia 1.10+**

## Overview

Accelerates composite trapezoidal quadrature from O(h^2) to O(h^(2k)) accuracy via successive Richardson extrapolation across halving step grids.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(2^K) trapezoidal refinement + O(K^2) tableau extrapolation` |
| **Space Complexity** | `O(K^2) Romberg triangle` |

## Mathematical & Safety Invariants

- Exact on polynomials up to degree 2k-1 within machine precision.

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
