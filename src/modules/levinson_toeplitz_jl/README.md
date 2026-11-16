# O(N^2) Symmetric Positive-Definite Levinson-Durbin Toeplitz Solver (`levinson_toeplitz_jl`)

> Category: **Structured Linear Algebra** | Language: **Julia 1.10+**

## Overview

Solves symmetric positive-definite Toeplitz systems T x = b where T[i, j] = r[|i - j| + 1] via backward-forward prediction vector reflection recurrences in quadratic time and linear memory.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) vs O(N^3) generic LU` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Schur-Cohn stability requires |reflection_k| < 1 at every recursive order update.
- Dense product T * x equals right-hand side b within 1e-10 relative residual.

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
