# Allocation-Free Type-Stable Tridiagonal Thomas Solver (`tridiagonal_thomas_jl`)

> Category: **Linear Algebra** | Language: **Julia 1.10+**

## Overview

Solves tridiagonal linear systems T*x = d without matrix allocation or allocations inside the inner loop, preserving strict float type stability.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) in-place forward sweep & back substitution` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Reconstructed T*x matches RHS d to machine accuracy.

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
