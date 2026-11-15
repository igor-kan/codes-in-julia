function bench_bluestein()
    n = 997
    x = ComplexF64[sin(0.01 * k) for k in 1:n]
    plan = build_bluestein_plan(n)
    t0 = time_ns()
    X = execute_bluestein(plan, x)
    dt = (time_ns() - t0) / 1e6
    @assert length(X) == n
    return dt
end
