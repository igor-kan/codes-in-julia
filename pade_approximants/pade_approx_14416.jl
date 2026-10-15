"""
    compute_pade_approx_14416(x::Float64)

Evaluate rational function approximant order 14416.
"""
function compute_pade_approx_14416(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 1.0)
end
