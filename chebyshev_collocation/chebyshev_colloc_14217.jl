"""
    compute_chebyshev_colloc_14217(x::Float64)

Evaluate chebyshev collocation node order 14217.
"""
function compute_chebyshev_colloc_14217(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
