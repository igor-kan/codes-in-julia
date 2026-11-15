# Bland-Rule Primal Simplex LP Solver (`simplex_linear_prog`)

> Category: **Mathematical Optimization** | Language: **Julia 1.10+**

## Overview

Tableau primal simplex maximizer with Bland lexicographical entering/leaving index rule ensuring anti-cycling termination.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(pivots * m * n)` |
| **Space Complexity** | `O(m * n)` |

## Mathematical & Safety Invariants

- every inequality A*x <= b + 1e-9 is satisfied
- primal variables maintain non-negativity x >= -1e-9
- dot(c, x) matches optimal tableau objective entry

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
