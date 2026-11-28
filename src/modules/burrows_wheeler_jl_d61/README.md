# Burrows-Wheeler Rotation Sorting Transform & Inverse (`burrows_wheeler_jl_d61`)

> Category: **String Algorithms** | Language: **Julia 1.10+**

## Overview

Builds the Burrows-Wheeler last column by lexicographically sorting all cyclic rotations behind a unique sentinel, then inverts it through the LF-mapping permutation.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2 log N) suffix-rotation comparison sort` |
| **Space Complexity** | `O(N^2) rotation matrix plus O(N) auxiliary arrays` |

## Mathematical & Safety Invariants

- Inverse transform reconstructs the original byte string exactly and encoded length equals |s| + 1 with the sentinel.

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
