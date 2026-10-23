"""
    compute_pade_approx_15741(x::Float64)

Evaluate rational function approximant order 15741.
"""
function compute_pade_approx_15741(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end
