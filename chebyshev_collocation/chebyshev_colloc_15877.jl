"""
    compute_chebyshev_colloc_15877(x::Float64)

Evaluate chebyshev collocation node order 15877.
"""
function compute_chebyshev_colloc_15877(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
