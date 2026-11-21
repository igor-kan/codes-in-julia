function clenshaw_cheb_eval(coeffs::AbstractVector{<:Real}, x::Real)
    n = length(coeffs)
    if n == 0
        return 0.0
    end
    b1 = 0.0
    b2 = 0.0
    xf = Float64(x)
    for k in n:-1:2
        b0 = Float64(coeffs[k]) + 2.0 * xf * b1 - b2
        b2 = b1
        b1 = b0
    end
    return Float64(coeffs[1]) + xf * b1 - b2
end
