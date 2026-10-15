"""
    compute_chebyshev_colloc_14447(x::Float64)

Evaluate chebyshev collocation node order 14447.
"""
function compute_chebyshev_colloc_14447(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
