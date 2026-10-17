"""
    compute_pade_approx_14731(x::Float64)

Evaluate rational function approximant order 14731.
"""
function compute_pade_approx_14731(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end
