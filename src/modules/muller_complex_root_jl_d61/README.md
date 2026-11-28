# Muller Parabolic Three-Point Complex Root Finder (`muller_complex_root_jl_d61`)

> Category: **Root Finding** | Language: **Julia 1.10+**

## Overview

Finds complex roots of real-coefficient polynomials by fitting a parabola through three iterates and stepping to the nearer quadratic root, handling complex conjugate pairs without derivatives.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * I) Horner evaluation per parabolic interpolation step` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Reported residual |p(root)| is below the convergence tolerance for quadratic and cubic polynomials.

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
