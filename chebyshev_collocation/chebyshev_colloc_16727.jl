"""
    compute_chebyshev_colloc_16727(x::Float64)

Evaluate chebyshev collocation node order 16727.
"""
function compute_chebyshev_colloc_16727(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
