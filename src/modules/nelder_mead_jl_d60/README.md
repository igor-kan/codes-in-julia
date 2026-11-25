# Nelder-Mead Derivative-Free Simplex Function Minimizer (`nelder_mead_jl_d60`)

> Category: **Nonlinear Optimization** | Language: **Julia 1.10+**

## Overview

Minimizes unconstrained multivariate objectives without gradients via ordered vertex centroid reflection, expansion, outside/inside contraction, and shrink steps.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(I * N log N) simplex reflection, expansion, contraction, shrink` |
| **Space Complexity** | `O(N^2) simplex vertices` |

## Mathematical & Safety Invariants

- Simplex best objective value converges monotonically to known global minimum.

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
