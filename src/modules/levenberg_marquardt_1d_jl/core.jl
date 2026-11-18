function fit_exp_decay_lm(ts::Vector{Float64}, ys::Vector{Float64}, k0::Float64)
    k = k0; lam = 1e-2
    for _ in 1:40
        r = [exp(-k * t) - y for (t, y) in zip(ts, ys)]
        J = [-t * exp(-k * t) for t in ts]
        rss = sum(abs2, r)
        g = sum(J .* r)
        H = sum(abs2, J) + lam
        kn = k - g / H
        rn = sum(abs2, exp(-kn * t) - y for (t, y) in zip(ts, ys))
        if rn < rss
            k = kn; lam *= 0.5
        else
            lam *= 4.0
        end
    end
    return LmState(k, sum(abs2, exp(-k * t) - y for (t, y) in zip(ts, ys)))
end
