# Golub-Kahan Householder Matrix Bidiagonalization in Julia (`qr_householder_bidiag`)

> Category: **Numerical Linear Algebra** | Language: **Julia 1.10+**

## Overview

Reduces tall real M x N matrices (M >= N) into U * B * V^T orthogonal bidiagonal form using stacked Householder reflections without dense intermediate products.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(M * N^2)` |
| **Space Complexity** | `O(M * N)` |

## Mathematical & Safety Invariants

- Accumulated left/right factors satisfy U'U == I and V'V == I within 1e-11 Frobenius norm.
- Reconstructed product U * B * V' reproduces original input A to machine precision.

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
