"""
    compute_chebyshev_colloc_15107(x::Float64)

Evaluate chebyshev collocation node order 15107.
"""
function compute_chebyshev_colloc_15107(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
