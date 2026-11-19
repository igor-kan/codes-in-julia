# Tridiagonal C^2 Natural Cubic Spline Trajectory Interpolator (`spline_natural_cubic_jl`)

> Category: **Numerical Interpolation** | Language: **Julia 1.10+**

## Overview

Fits twice continuously differentiable piecewise cubic polynomials across arbitrary sorted knots with zero curvature boundary conditions S''(x_1) = S''(x_n) = 0.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) natural second-derivative tridiagonal solve + O(log N) eval` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Passes identically through every knot and reproduces linear functions with zero residual.

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
