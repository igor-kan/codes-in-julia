# Arnoldi Hessenberg Krylov Projector (`arnoldi_hessenberg_eig`)

> Category: **Spectral Linear Algebra** | Language: **Julia 1.10+**

## Overview

k-step Arnoldi Krylov projection with double modified Gram-Schmidt producing orthonormal Q_k and upper Hessenberg H_k with residual bound check.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(m^2 * n)` |
| **Space Complexity** | `O(m * n)` |

## Mathematical & Safety Invariants

- Krylov vectors satisfy ||Q_k^T Q_k - I||_F <= 1e-11
- Arnoldi identity A * Q_k == Q_{k+1} * H_ext holds within 1e-10
- H_k is strictly upper Hessenberg below subdiagonal

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
