"""
    compute_chebyshev_colloc_14922(x::Float64)

Evaluate chebyshev collocation node order 14922.
"""
function compute_chebyshev_colloc_14922(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
