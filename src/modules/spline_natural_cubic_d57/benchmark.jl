t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += hermite_eval(0.0, 1.0, 0.0, 3.0, 0.6)
end
ms = (time_ns() - t0) / 1e6
println("spline_natural_cubic_d57 ms=", ms, " sink=", sink)
