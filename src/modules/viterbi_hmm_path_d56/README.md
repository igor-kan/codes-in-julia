# Discrete Viterbi Maximum-A-Posteriori HMM Decoder (`viterbi_hmm_path_d56`)

> Category: **Probabilistic Sequence Models** | Language: **Julia 1.10+**

## Overview

Decodes optimal hidden state trajectories across finite-state Hidden Markov Models in log-probability space with explicit backpointer arrays.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(T * S^2)` |
| **Space Complexity** | `O(T * S)` |

## Mathematical & Safety Invariants

- Decoded state path realizes log-likelihood >= greedy myopic state path.

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
