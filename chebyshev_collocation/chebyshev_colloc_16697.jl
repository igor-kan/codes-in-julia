"""
    compute_chebyshev_colloc_16697(x::Float64)

Evaluate chebyshev collocation node order 16697.
"""
function compute_chebyshev_colloc_16697(x::Float64)::Float64
    return cos(pi * 7 / 8) * x
end
