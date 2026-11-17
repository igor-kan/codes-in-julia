t0 = time_ns()
sink = 0.0
p=fit_newton(NewtonMethod(), collect(1.0:16.0), collect(1.0:16.0).^2); for i in 1:100; sink+=eval_newton(p, 0.1*i); end
ms = (time_ns() - t0) / 1e6
println("newton_divided_diff_jl ms=", ms, " sink=", sink)
