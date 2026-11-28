# Strassen Seven-Product Divide-and-Conquer Matrix Multiplier (`strassen_recursive_matmul_jl_d61`)

> Category: **Matrix Multiplication** | Language: **Julia 1.10+**

## Overview

Multiplies power-of-two square matrices using Strassen's seven block products, reducing recursive multiplications from eight to seven while falling back to the naive kernel at 2x2.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2.807) seven recursive half-size block products` |
| **Space Complexity** | `O(N^2 log N) block temporaries` |

## Mathematical & Safety Invariants

- Recursive product matches the naive triple-loop product for power-of-two dimensions within 1e-10.

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
