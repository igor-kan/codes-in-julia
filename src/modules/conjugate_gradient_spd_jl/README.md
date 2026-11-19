# Preconditioned Conjugate Gradient SPD Sparse-Free Solver (`conjugate_gradient_spd_jl`)

> Category: **Iterative Linear Solvers** | Language: **Julia 1.10+**

## Overview

Solves symmetric positive-definite systems A*x = b via Hestenes-Stiefel Conjugate Gradient without explicit matrix inversion.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K * N^2) orthogonal A-conjugate residual descent` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Residual norm ||A*x - b||_2 falls below tolerance within <= N steps in exact arithmetic.

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
