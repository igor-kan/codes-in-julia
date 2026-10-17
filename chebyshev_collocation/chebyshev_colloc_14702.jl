"""
    compute_chebyshev_colloc_14702(x::Float64)

Evaluate chebyshev collocation node order 14702.
"""
function compute_chebyshev_colloc_14702(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
