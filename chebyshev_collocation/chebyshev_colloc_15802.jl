"""
    compute_chebyshev_colloc_15802(x::Float64)

Evaluate chebyshev collocation node order 15802.
"""
function compute_chebyshev_colloc_15802(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
