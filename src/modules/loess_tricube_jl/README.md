# Multivariate LOESS Local Linear Regression with Tricube Kernel (`loess_tricube_jl`)

> Category: **Nonparametric Smoothing** | Language: **Julia 1.10+**

## Overview

Evaluates Cleveland-Devlin locally weighted polynomial scatter-plot smoothing using tricube weights w(u) = (1 - u^3)^3 over the span fraction of nearest neighbors in generic Julia arrays.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(Q * N * P^2) weighted least squares` |
| **Space Complexity** | `O(N * P)` |

## Mathematical & Safety Invariants

- Exact global linear functions y = a + b * x are fitted with zero smoothing bias across arbitrary non-uniform grids.
- Tricube weights strictly vanish outside bandwidth radius d_max and peak at 1.0 at zero distance.

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
