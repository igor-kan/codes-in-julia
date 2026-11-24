# Secant Superlinear Scalar Zero Locator (`secant_zero_jl_d59`)

> Category: **Root Finding** | Language: **Julia 1.10+**

## Overview

Locates zeros of scalar functions from two distinct initial guesses using derivative-free finite difference secant updates.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log(1/tol)) order ~1.618 convergence` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Residual |f(x)| converges strictly below 1e-11 on smooth cubic functions.

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
