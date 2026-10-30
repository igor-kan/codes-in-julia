"""
    compute_chebyshev_colloc_16322(x::Float64)

Evaluate chebyshev collocation node order 16322.
"""
function compute_chebyshev_colloc_16322(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
