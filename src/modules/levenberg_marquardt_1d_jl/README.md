# Damped Levenberg-Marquardt Nonlinear Least-Squares Optimizer (`levenberg_marquardt_1d_jl`)

> Category: **Nonlinear Optimization** | Language: **Julia 1.10+**

## Overview

Fits nonlinear parameter models by blending Gauss-Newton curvature J'J with Levenberg-Marquardt damping lambda*I to guarantee descent from far initial guesses.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K * M) trust-region damped Gauss-Newton normal equations` |
| **Space Complexity** | `O(M)` |

## Mathematical & Safety Invariants

- Residual sum of squares monotonically decreases across accepted steps.

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
