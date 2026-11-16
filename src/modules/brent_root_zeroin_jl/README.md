# Brent-Dekker Inverse Quadratic / Bisection Bracketing Root Finder (`brent_root_zeroin_jl`)

> Category: **Nonlinear Equations & Root Finding** | Language: **Julia 1.10+**

## Overview

Combines Inverse Quadratic Interpolation (IQI), secant extrapolation, and strict sign-change bisection fallback (Brent's zeroin) for machine-precision scalar root localization.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log((b - a) / tol)) guaranteed with superlinear IQI speed` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Bracket [a, b] preserves sign change f(a) * f(b) <= 0 on every step.
- Returned root satisfies |f(root)| <= tol_f or |b - a| <= tol_x.

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
