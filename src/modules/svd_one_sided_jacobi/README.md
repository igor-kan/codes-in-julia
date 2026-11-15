# Hestenes One-Sided Jacobi SVD (`svd_one_sided_jacobi`)

> Category: **Numerical Linear Algebra** | Language: **Julia 1.10+**

## Overview

Column-orthogonalizing Hestenes one-sided Jacobi Singular Value Decomposition factoring A = U * Diagonal(S) * transpose(V) with high relative accuracy.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(m * n^2 * sweeps)` |
| **Space Complexity** | `O(m * n + n^2)` |

## Mathematical & Safety Invariants

- U columns are orthonormal and V^T * V == I_n
- singular values sigma_k >= 0 arranged in non-increasing order
- reconstruction error ||A - U * Diagonal(S) * transpose(V)||_F <= 1e-10

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
