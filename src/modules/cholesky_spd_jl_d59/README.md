# Symmetric Positive-Definite Lower Cholesky Factorizer (`cholesky_spd_jl_d59`)

> Category: **Matrix Factorizations** | Language: **Julia 1.10+**

## Overview

Constructs exact lower-triangular factor L satisfying L * L' == A over symmetric positive-definite matrices cleanly.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^3 / 3)` |
| **Space Complexity** | `O(N^2)` |

## Mathematical & Safety Invariants

- Product L * L' matches input A within 1e-11 cleanly.

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
