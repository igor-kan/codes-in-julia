"""
    compute_chebyshev_colloc_14427(x::Float64)

Evaluate chebyshev collocation node order 14427.
"""
function compute_chebyshev_colloc_14427(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
