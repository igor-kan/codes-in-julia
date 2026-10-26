"""
    compute_chebyshev_colloc_16002(x::Float64)

Evaluate chebyshev collocation node order 16002.
"""
function compute_chebyshev_colloc_16002(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
