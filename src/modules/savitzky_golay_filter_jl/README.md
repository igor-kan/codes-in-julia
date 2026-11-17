# Savitzky-Golay Polynomial Least-Squares Smoothing Weights (`savitzky_golay_filter_jl`)

> Category: **Signal Processing** | Language: **Julia 1.10+**

## Overview

Computes exact Savitzky-Golay FIR kernel coefficients from polynomial Vandermonde normal equations so polynomial signals up to degree P pass undistorted.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(W * P^2) Vandermonde pseudoinverse filter generation, O(N * W) pass` |
| **Space Complexity** | `O(W * P)` |

## Mathematical & Safety Invariants

- Filter weights sum strictly to 1.0 (DC gain preservation).
- Polynomial signals of degree <= P are reproduced exactly in interior indices.

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
