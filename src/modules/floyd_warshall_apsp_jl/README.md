# Floyd-Warshall All-Pairs Shortest Path & Next-Hop Matrix (`floyd_warshall_apsp_jl`)

> Category: **Graph Optimization** | Language: **Julia 1.10+**

## Overview

Computes all-pairs shortest path costs and reconstructible predecessor paths across weighted directed graphs while detecting negative-weight cycles on diagonal entries.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(V^3) dynamic programming matrix relaxation` |
| **Space Complexity** | `O(V^2) distance and parent matrices` |

## Mathematical & Safety Invariants

- dist[i, j] <= dist[i, k] + dist[k, j] for all triples i, k, j.
- Negative cycles yield dist[v, v] < 0.

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
