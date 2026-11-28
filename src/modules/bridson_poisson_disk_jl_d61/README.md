# Bridson Poisson-Disk Blue-Noise Point Sampler (`bridson_poisson_disk_jl_d61`)

> Category: **Computational Geometry** | Language: **Julia 1.10+**

## Overview

Generates a maximal blue-noise point set in a rectangle by accepting annulus candidates that keep every pair at least a fixed radius apart, using a background grid for constant-time neighbor tests.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) expected inserts with O(k) annulus candidates per active point` |
| **Space Complexity** | `O(N) points plus O(W * H) background grid` |

## Mathematical & Safety Invariants

- All sampled pairs respect the minimum spacing and every accepted point remains inside the domain rectangle.

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
