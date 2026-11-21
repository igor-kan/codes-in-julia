# Derivative-Free 2D Nelder-Mead Simplex Optimizer (`nelder_mead_simplex_d56`)

> Category: **Derivative-Free Optimization** | Language: **Julia 1.10+**

## Overview

Minimizes smooth or non-smooth scalar functions over R^n iteratively using simplex centroid reflection, expansion, contraction, and shrink rules.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(I * D^2)` |
| **Space Complexity** | `O(D^2)` |

## Mathematical & Safety Invariants

- Converges strictly to quadratic bowl minimizer within tight coordinate tolerance.

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
