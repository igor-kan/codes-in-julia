"""
    compute_chebyshev_colloc_15372(x::Float64)

Evaluate chebyshev collocation node order 15372.
"""
function compute_chebyshev_colloc_15372(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
