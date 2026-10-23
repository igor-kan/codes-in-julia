"""
    compute_chebyshev_colloc_15777(x::Float64)

Evaluate chebyshev collocation node order 15777.
"""
function compute_chebyshev_colloc_15777(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
