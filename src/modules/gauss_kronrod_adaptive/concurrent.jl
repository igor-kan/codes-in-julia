function parallel_piecewise_gk(fn, knots::Vector{Float64})
    alg = GaussKronrod15(16)
    n = length(knots) - 1
    parts = Vector{GkResult{Float64}}(undef, n)
    Threads.@threads for i in 1:n
        parts[i] = quad_gk(alg, fn, knots[i], knots[i + 1])
    end
    return GkResult{Float64}(sum(p.integral for p in parts), sum(p.error_est for p in parts), sum(p.evals for p in parts), sum(p.subdivisions for p in parts))
end
