"""
    compute_chebyshev_colloc_15527(x::Float64)

Evaluate chebyshev collocation node order 15527.
"""
function compute_chebyshev_colloc_15527(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
