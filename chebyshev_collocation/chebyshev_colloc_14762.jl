"""
    compute_chebyshev_colloc_14762(x::Float64)

Evaluate chebyshev collocation node order 14762.
"""
function compute_chebyshev_colloc_14762(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
