t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += fit_exp_gn([0.0, 1.0, 2.0], [2.0, 1.2, 0.72], 1.5, -0.3)[1]
end
ms = (time_ns() - t0) / 1e6
println("gauss_newton_nlls_d57 ms=", ms, " sink=", sink)
