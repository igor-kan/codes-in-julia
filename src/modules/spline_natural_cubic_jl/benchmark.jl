t0 = time_ns()
sink = 0.0
for _ in 1:100
    sp = fit_natural_spline([0.0, 1.0, 2.0], [0.0, 1.0, 4.0]); sink += eval_spline(sp, 0.5)
end
ms = (time_ns() - t0) / 1e6
println("spline_natural_cubic_jl ms=", ms, " sink=", sink)
