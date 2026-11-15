function bench_nm()
    t0 = time_ns()
    res = nelder_mead_solve(NelderMeadSolver(0.05), rosenbrock_val, [-1.5, 2.0], NmOptions(max_iter = 1500, tol = 1e-9))
    dt = (time_ns() - t0) / 1e6
    @assert res.fx < 1e-8
    return dt
end
