# Hotelling-Deflated Top-2 Symmetric Eigenvalues (`power_method_sym_d57`)

> Category: **Spectral Decomposition** | Language: **Julia 1.10+**

## Overview

Extracts top-1 eigenvalue/eigenvector via power iteration and Hotelling-deflates A - lam1 * v1 * v1' to obtain the second-largest symmetric eigenvalue.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K * N^2)` |
| **Space Complexity** | `O(N^2)` |

## Mathematical & Safety Invariants

- Sum of top-2 eigenvalues on 2x2 symmetric matrices equals exact trace cleanly.

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
