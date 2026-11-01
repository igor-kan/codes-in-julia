"""
    compute_chebyshev_colloc_16452(x::Float64)

Evaluate chebyshev collocation node order 16452.
"""
function compute_chebyshev_colloc_16452(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
