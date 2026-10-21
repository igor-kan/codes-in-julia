"""
    compute_chebyshev_colloc_15562(x::Float64)

Evaluate chebyshev collocation node order 15562.
"""
function compute_chebyshev_colloc_15562(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
