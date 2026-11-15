# Jacobi Preconditioned Conjugate Gradient (`cg_preconditioned_jl`)

> Category: **Numerical Linear Algebra** | Language: **Julia 1.10+**

## Overview

Parametric AbstractFloat preconditioned Conjugate Gradient solver for symmetric positive-definite matrices with @inbounds @simd inner loops.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(k * n^2)` |
| **Space Complexity** | `O(n)` |

## Mathematical & Safety Invariants

- solution vector dimension matches right-hand side length
- exact Euclidean residual norm ||b - A*x|| <= tol on termination
- search directions remain mutually A-orthogonal across iterations

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
