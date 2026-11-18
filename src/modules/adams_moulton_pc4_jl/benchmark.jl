t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += solve_abm4((t, y) -> y, OdeGrid(0.0, 0.1, 10), 1.0)
end
ms = (time_ns() - t0) / 1e6
println("adams_moulton_pc4_jl ms=", ms, " sink=", sink)
