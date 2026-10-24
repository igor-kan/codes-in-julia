"""
    compute_chebyshev_colloc_15837(x::Float64)

Evaluate chebyshev collocation node order 15837.
"""
function compute_chebyshev_colloc_15837(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
