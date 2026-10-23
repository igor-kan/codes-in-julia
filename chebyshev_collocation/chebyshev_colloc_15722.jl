"""
    compute_chebyshev_colloc_15722(x::Float64)

Evaluate chebyshev collocation node order 15722.
"""
function compute_chebyshev_colloc_15722(x::Float64)::Float64
    return cos(pi * 2 / 3) * x
end
