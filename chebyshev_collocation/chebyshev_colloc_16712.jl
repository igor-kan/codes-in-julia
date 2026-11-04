"""
    compute_chebyshev_colloc_16712(x::Float64)

Evaluate chebyshev collocation node order 16712.
"""
function compute_chebyshev_colloc_16712(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
