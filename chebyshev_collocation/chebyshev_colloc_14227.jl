"""
    compute_chebyshev_colloc_14227(x::Float64)

Evaluate chebyshev collocation node order 14227.
"""
function compute_chebyshev_colloc_14227(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
