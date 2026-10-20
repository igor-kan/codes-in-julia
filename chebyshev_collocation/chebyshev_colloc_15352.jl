"""
    compute_chebyshev_colloc_15352(x::Float64)

Evaluate chebyshev collocation node order 15352.
"""
function compute_chebyshev_colloc_15352(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
