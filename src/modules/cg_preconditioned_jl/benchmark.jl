using LinearAlgebra

function bench_pcg()
    n = 128
    A = Matrix(Tridiagonal(fill(-1.0, n - 1), fill(4.0, n), fill(-1.0, n - 1)))
    b = ones(n)
    t0 = time_ns()
    sol = solve_pcg(JacobiCgSolver(true), A, b, CgConfig(1e-10, 1000))
    dt = (time_ns() - t0) / 1e6
    @assert sol.converged
    return dt
end
