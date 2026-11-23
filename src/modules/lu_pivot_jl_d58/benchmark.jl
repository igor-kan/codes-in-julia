t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += solve_pivoted([0.0 1.0; 2.0 3.0], [2.0, 8.0])[1]
end
ms = (time_ns() - t0) / 1e6
println("lu_pivot_jl_d58 ms=", ms, " sink=", sink)
