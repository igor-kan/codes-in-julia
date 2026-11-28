# Lomb-Scargle Unevenly Sampled Periodogram (`lomb_scargle_periodogram_jl_d61`)

> Category: **Spectral Analysis** | Language: **Julia 1.10+**

## Overview

Estimates the spectral power of unevenly sampled observations at trial angular frequencies by projecting mean-centered data onto phase-shifted sine and cosine bases.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * M) trigonometric sums for N samples over M trial frequencies` |
| **Space Complexity** | `O(N) centered samples plus O(1) accumulators` |

## Mathematical & Safety Invariants

- Constant signals yield zero power and a pure sinusoid peaks at its generating frequency.

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
