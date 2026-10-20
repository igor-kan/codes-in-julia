"""
    compute_chebyshev_colloc_15302(x::Float64)

Evaluate chebyshev collocation node order 15302.
"""
function compute_chebyshev_colloc_15302(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
