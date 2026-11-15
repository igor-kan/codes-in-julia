# Arbitrary-Length Bluestein Chirp Z-Transform FFT (`fft_bluestein_chirp`)

> Category: **Signal Processing / Spectral** | Language: **Julia 1.10+**

## Overview

O(N log N) arbitrary prime/composite length 1D complex DFT via Bluestein chirp convolution mapped onto power-of-two radix-2 FFT.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N)` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- exact agreement with O(N^2) DFT Vandermonde oracle for all N (prime or composite)
- Parseval identity sum(|x|^2) == sum(|X|^2) / N holds to 1e-10
- zero-length input is cleanly rejected

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
