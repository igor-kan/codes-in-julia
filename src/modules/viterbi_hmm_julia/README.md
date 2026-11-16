# Parametric Log-Space HMM Viterbi Decoder & Forward Marginal Evaluator (`viterbi_hmm_julia`)

> Category: **Probabilistic Graphical Models** | Language: **Julia 1.10+**

## Overview

Computes exact maximum a posteriori hidden state sequences via log-domain dynamic programming and numerical logsumexp Forward pass marginal likelihood in generic AbstractFloat.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(T * S^2)` |
| **Space Complexity** | `O(T * S)` |

## Mathematical & Safety Invariants

- Viterbi best path log-probability never exceeds the total Forward log-marginal likelihood.
- Recovered state index sequence aligns strictly inside 1:S.

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
