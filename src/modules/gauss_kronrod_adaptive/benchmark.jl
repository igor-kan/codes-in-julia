function bench_gk()
    t0 = time_ns()
    res = quad_gk(GaussKronrod15(20), x -> cos(20.0 * x) / (1.0 + x^2), -2.0, 2.0)
    dt = (time_ns() - t0) / 1e6
    @assert isfinite(res.integral)
    return dt
end
