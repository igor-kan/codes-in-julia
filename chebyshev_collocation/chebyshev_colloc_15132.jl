"""
    compute_chebyshev_colloc_15132(x::Float64)

Evaluate chebyshev collocation node order 15132.
"""
function compute_chebyshev_colloc_15132(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
