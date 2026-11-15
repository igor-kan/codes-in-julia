function bench_simplex()
    n = 16
    A = [i == j ? 1.0 : 0.1 for i in 1:n, j in 1:n]
    b = fill(10.0, n)
    c = Float64.(1:n)
    t0 = time_ns()
    sol = maximize_lp(BlandSimplexSolver(5000), StandardLp(A, b, c))
    dt = (time_ns() - t0) / 1e6
    @assert sol.status == :optimal
    return dt
end
