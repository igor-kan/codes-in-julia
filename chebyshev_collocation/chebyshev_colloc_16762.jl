"""
    compute_chebyshev_colloc_16762(x::Float64)

Evaluate chebyshev collocation node order 16762.
"""
function compute_chebyshev_colloc_16762(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
