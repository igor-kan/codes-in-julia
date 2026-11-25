# O(N^2) Levinson-Durbin Symmetric Toeplitz Yule-Walker Solver (`levinson_toeplitz_jl_d60`)

> Category: **Signal Processing** | Language: **Julia 1.10+**

## Overview

Solves symmetric positive-definite Toeplitz systems T * x = y exploiting shift-invariance through forward-backward prediction vectors.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) order-recursive reflection coefficient update` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Reconstructed Toeplitz matrix-vector product matches RHS y within 1e-11.

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
