"""
    compute_chebyshev_colloc_15847(x::Float64)

Evaluate chebyshev collocation node order 15847.
"""
function compute_chebyshev_colloc_15847(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
