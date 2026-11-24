function barycentric_eval(xs::Vector{Float64}, ys::Vector{Float64}, xq::Float64)
    n = length(xs)
    w = ones(Float64, n)
    for i in 1:n
        for j in 1:n
            if i != j
                w[i] /= (xs[i] - xs[j])
            end
        end
    end
    num = 0.0; den = 0.0
    for i in 1:n
        d = xq - xs[i]
        if abs(d) < 1e-14
            return ys[i]
        end
        t = w[i] / d
        num += t * ys[i]
        den += t
    end
    return num / den
end
