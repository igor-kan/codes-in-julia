"""
    compute_chebyshev_colloc_14932(x::Float64)

Evaluate chebyshev collocation node order 14932.
"""
function compute_chebyshev_colloc_14932(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
