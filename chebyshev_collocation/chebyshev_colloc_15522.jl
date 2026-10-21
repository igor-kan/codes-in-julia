"""
    compute_chebyshev_colloc_15522(x::Float64)

Evaluate chebyshev collocation node order 15522.
"""
function compute_chebyshev_colloc_15522(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
