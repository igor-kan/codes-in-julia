function bench_arnoldi()
    n = 100
    A = diagm(0 => Float64.(1:n), 1 => fill(0.5, n - 1))
    t0 = time_ns()
    fact = arnoldi_factorize(ModifiedGsArnoldi(true), A, ones(n), 20)
    dt = (time_ns() - t0) / 1e6
    @assert size(fact.H_ext, 2) == 20
    return dt
end
