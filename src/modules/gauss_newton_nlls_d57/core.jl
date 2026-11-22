function fit_exp_gn(t::Vector{Float64}, y::Vector{Float64}, a0::Float64, b0::Float64; iters::Int = 25)
    a, b = a0, b0
    for _ in 1:iters
        r = @. a * exp(b * t) - y
        j1 = @. exp(b * t)
        j2 = @. a * t * exp(b * t)
        h11 = sum(j1 .* j1)
        h12 = sum(j1 .* j2)
        h22 = sum(j2 .* j2)
        g1 = -sum(j1 .* r)
        g2 = -sum(j2 .* r)
        det = h11 * h22 - h12 * h12
        if abs(det) < 1e-18
            break
        end
        da = (g1 * h22 - g2 * h12) / det
        db = (h11 * g2 - h12 * g1) / det
        a += da; b += db
    end
    return a, b
end
