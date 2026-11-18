t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += sum(solve_symmetric_toeplitz([4.0, 1.0], [5.0, 5.0]))
end
ms = (time_ns() - t0) / 1e6
println("toeplitz_levinson_solve_jl ms=", ms, " sink=", sink)
