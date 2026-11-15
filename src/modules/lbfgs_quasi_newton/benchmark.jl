function bench_lbfgs()
    d = 64
    diag_w = Float64.(1:d)
    fg!(g, x) = begin
        @. g = diag_w * x
        return 0.5 * sum(@. diag_w * x^2)
    end
    t0 = time_ns()
    res = minimize_smooth(LbfgsSolver(8), fg!, ones(d), LbfgsConfig(tol = 1e-8))
    dt_ms = (time_ns() - t0) / 1e6
    @assert res.converged
    return dt_ms
end
