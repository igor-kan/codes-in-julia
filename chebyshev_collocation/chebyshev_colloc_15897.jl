"""
    compute_chebyshev_colloc_15897(x::Float64)

Evaluate chebyshev collocation node order 15897.
"""
function compute_chebyshev_colloc_15897(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
