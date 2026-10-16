"""
    compute_chebyshev_colloc_14612(x::Float64)

Evaluate chebyshev collocation node order 14612.
"""
function compute_chebyshev_colloc_14612(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
