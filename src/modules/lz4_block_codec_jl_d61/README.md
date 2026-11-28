# LZ4 Block Compressor with Greedy Match Encoding (`lz4_block_codec_jl_d61`)

> Category: **Data Compression** | Language: **Julia 1.10+**

## Overview

Compresses byte blocks into LZ4 sequences of literals and offset-length matches with a greedy longest-match search, then reconstructs the input through byte-wise overlapping copies.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * W) greedy longest-match search over the sliding window` |
| **Space Complexity** | `O(N) output token stream plus O(W) window lookback` |

## Mathematical & Safety Invariants

- Decoding any encoded block reproduces the exact input bytes, including empty and long repetitive payloads.

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
