t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += integrate_rk4_sys((t, y) -> y, 0.0, [1.0], 0.1, 10).y[1]
end
ms = (time_ns() - t0) / 1e6
println("rk4_adaptive_step_jl ms=", ms, " sink=", sink)
