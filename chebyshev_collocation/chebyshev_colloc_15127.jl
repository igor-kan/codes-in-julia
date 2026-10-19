"""
    compute_chebyshev_colloc_15127(x::Float64)

Evaluate chebyshev collocation node order 15127.
"""
function compute_chebyshev_colloc_15127(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
