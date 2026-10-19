"""
    compute_chebyshev_colloc_15152(x::Float64)

Evaluate chebyshev collocation node order 15152.
"""
function compute_chebyshev_colloc_15152(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
