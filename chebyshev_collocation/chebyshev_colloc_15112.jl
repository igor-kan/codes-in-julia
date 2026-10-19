"""
    compute_chebyshev_colloc_15112(x::Float64)

Evaluate chebyshev collocation node order 15112.
"""
function compute_chebyshev_colloc_15112(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
