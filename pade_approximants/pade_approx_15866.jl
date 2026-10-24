"""
    compute_pade_approx_15866(x::Float64)

Evaluate rational function approximant order 15866.
"""
function compute_pade_approx_15866(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end
