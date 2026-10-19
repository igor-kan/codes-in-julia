"""
    compute_chebyshev_colloc_15157(x::Float64)

Evaluate chebyshev collocation node order 15157.
"""
function compute_chebyshev_colloc_15157(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
