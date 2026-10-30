"""
    compute_pade_approx_16301(x::Float64)

Evaluate rational function approximant order 16301.
"""
function compute_pade_approx_16301(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end
