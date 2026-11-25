# Arnoldi Orthonormal Krylov Basis & Upper Hessenberg Projector (`krylov_arnoldi_jl_d60`)

> Category: **Krylov Subspaces** | Language: **Julia 1.10+**

## Overview

Constructs orthonormal Krylov basis vectors Q_{:,1:k+1} and upper Hessenberg projection matrix H solving A Q_k = Q_{k+1} H_bar.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K^2 * N + K * N^2) modified Gram-Schmidt Arnoldi recurrence` |
| **Space Complexity** | `O(K * N) orthonormal basis Q` |

## Mathematical & Safety Invariants

- Satisfies orthogonality ||Q^T Q - I|| < 1e-10 and Arnoldi identity A*Q_k == Q_{k+1}*H.

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
