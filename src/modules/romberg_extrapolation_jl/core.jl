function integrate_romberg(rule::RombergRule, f::Function, a::Float64, b::Float64)
    validate_romberg(a, b, rule.max_levels, rule.tol)
    kmax = rule.max_levels
    R = zeros(Float64, kmax, kmax)
    h = b - a
    R[1, 1] = 0.5 * h * (f(a) + f(b))
    for k in 2:kmax
        h *= 0.5
        s = 0.0
        npts = 1 << (k - 2)
        for i in 1:npts
            s += f(a + (2 * i - 1) * h)
        end
        R[k, 1] = 0.5 * R[k - 1, 1] + h * s
        factor = 4.0
        for j in 2:k
            R[k, j] = R[k, j - 1] + (R[k, j - 1] - R[k - 1, j - 1]) / (factor - 1.0)
            factor *= 4.0
        end
        err = abs(R[k, k] - R[k - 1, k - 1])
        if k > 2 && err <= rule.tol
            return RombergResult(R[k, k], err, k)
        end
    end
    return RombergResult(R[kmax, kmax], abs(R[kmax, kmax] - R[kmax - 1, kmax - 1]), kmax)
end
