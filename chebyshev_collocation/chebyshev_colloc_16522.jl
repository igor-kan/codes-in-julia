"""
    compute_chebyshev_colloc_16522(x::Float64)

Evaluate chebyshev collocation node order 16522.
"""
function compute_chebyshev_colloc_16522(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
