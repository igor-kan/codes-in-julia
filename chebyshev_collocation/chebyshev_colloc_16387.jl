"""
    compute_chebyshev_colloc_16387(x::Float64)

Evaluate chebyshev collocation node order 16387.
"""
function compute_chebyshev_colloc_16387(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
