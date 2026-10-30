"""
    compute_chebyshev_colloc_16287(x::Float64)

Evaluate chebyshev collocation node order 16287.
"""
function compute_chebyshev_colloc_16287(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
