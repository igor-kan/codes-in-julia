"""
    compute_chebyshev_colloc_14442(x::Float64)

Evaluate chebyshev collocation node order 14442.
"""
function compute_chebyshev_colloc_14442(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
