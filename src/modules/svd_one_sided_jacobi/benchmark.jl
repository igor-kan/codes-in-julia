function bench_svd()
    A = Float64[sin(0.2 * i + 0.3 * j) for i in 1:40, j in 1:16]
    t0 = time_ns()
    res = jacobi_svd(HestenesJacobiSvd(40, 1e-12), A)
    dt = (time_ns() - t0) / 1e6
    @assert length(res.S) == 16
    return dt
end
