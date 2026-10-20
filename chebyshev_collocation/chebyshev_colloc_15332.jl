"""
    compute_chebyshev_colloc_15332(x::Float64)

Evaluate chebyshev collocation node order 15332.
"""
function compute_chebyshev_colloc_15332(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
