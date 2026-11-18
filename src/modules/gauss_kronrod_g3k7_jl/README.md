# Embedded Gauss-Kronrod G3-K7 Quadrature & Error Estimator (`gauss_kronrod_g3k7_jl`)

> Category: **Adaptive Quadrature** | Language: **Julia 1.10+**

## Overview

Evaluates both a 3-point Gauss rule and its 7-point Kronrod extension reusing the 3 Gauss abscissae to produce a high-order integral and a posteriori error bound.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(1) 7-point Kronrod + embedded 3-point Gauss evaluation` |
| **Space Complexity** | `O(1)` |

## Mathematical & Safety Invariants

- Exact on degree <= 11 polynomials with embedded error estimate |K7 - G3| == 0 on cubics.

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
