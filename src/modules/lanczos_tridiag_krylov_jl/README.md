# Symmetric Lanczos Three-Term Krylov Tridiagonalization (`lanczos_tridiag_krylov_jl`)

> Category: **Krylov Subspace Methods** | Language: **Julia 1.10+**

## Overview

Projects a symmetric matrix A onto a K-dimensional Krylov subspace via three-term recurrence producing diagonal alpha and subdiagonal beta entries.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K * N^2) three-term orthogonal Krylov recurrence` |
| **Space Complexity** | `O(N * K)` |

## Mathematical & Safety Invariants

- Tridiagonal trace sum(alpha) equals exact trace(A) when K == N.

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
