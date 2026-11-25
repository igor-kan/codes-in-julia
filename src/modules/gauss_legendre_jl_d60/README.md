# Symmetric Newton-Legendre Gauss Quadrature Nodes & Weights (`gauss_legendre_jl_d60`)

> Category: **Numerical Quadrature** | Language: **Julia 1.10+**

## Overview

Computes Gauss-Legendre abscissae on [-1, 1] and positive weights via three-term Legendre polynomial recurrence and Newton root refinement.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) three-term Legendre recurrence + Newton polishing` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Weights sum to 2.0 and n-point rule integrates degree <= 2n-1 polynomials exactly.

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
