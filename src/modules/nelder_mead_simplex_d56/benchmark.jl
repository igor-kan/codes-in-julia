t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += nelder_mead_2d(v -> (v[1] - 1.0)^2 + v[2]^2, [2.0, 2.0]; maxiter = 20)[2]
end
ms = (time_ns() - t0) / 1e6
println("nelder_mead_simplex_d56 ms=", ms, " sink=", sink)
