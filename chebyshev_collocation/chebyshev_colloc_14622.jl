"""
    compute_chebyshev_colloc_14622(x::Float64)

Evaluate chebyshev collocation node order 14622.
"""
function compute_chebyshev_colloc_14622(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
