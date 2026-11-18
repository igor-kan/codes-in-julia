# Levinson-Durbin O(N^2) Symmetric Toeplitz Linear System Solver (`toeplitz_levinson_solve_jl`)

> Category: **Structured Linear Systems** | Language: **Julia 1.10+**

## Overview

Solves symmetric positive-definite Toeplitz systems T*x = b defined by first row r[1..N] in O(N^2) operations using Levinson's auxiliary backward vector recursion.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) reflection-coefficient recursion` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Reconstructed Toeplitz matrix-vector product T*x matches b to machine accuracy.

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
