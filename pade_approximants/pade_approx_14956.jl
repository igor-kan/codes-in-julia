"""
    compute_pade_approx_14956(x::Float64)

Evaluate rational function approximant order 14956.
"""
function compute_pade_approx_14956(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 1.0)
end
