"""
    compute_chebyshev_colloc_15322(x::Float64)

Evaluate chebyshev collocation node order 15322.
"""
function compute_chebyshev_colloc_15322(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
