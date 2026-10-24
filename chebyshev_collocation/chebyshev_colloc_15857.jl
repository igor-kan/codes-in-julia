"""
    compute_chebyshev_colloc_15857(x::Float64)

Evaluate chebyshev collocation node order 15857.
"""
function compute_chebyshev_colloc_15857(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
