"""
    compute_chebyshev_colloc_16487(x::Float64)

Evaluate chebyshev collocation node order 16487.
"""
function compute_chebyshev_colloc_16487(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
