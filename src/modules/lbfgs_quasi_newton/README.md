# Limited-Memory BFGS Two-Loop Minimizer (`lbfgs_quasi_newton`)

> Category: **Nonlinear Optimization** | Language: **Julia 1.10+**

## Overview

Parametric L-BFGS two-loop recursion quasi-Newton optimizer with Armijo backtracking line search for smooth unconstrained functions.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(m * d * iters)` |
| **Space Complexity** | `O(m * d)` |

## Mathematical & Safety Invariants

- secant curvature pairs enforce dot(s_k, y_k) > 0 before ring-buffer push
- objective value monotonically decreases along accepted line-search steps
- final gradient Euclidean norm drops strictly below tolerance upon convergence

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
