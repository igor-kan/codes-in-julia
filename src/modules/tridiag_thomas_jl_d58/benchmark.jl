t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += solve_tdma([0.0, -1.0, -1.0], [4.0, 4.0, 4.0], [-1.0, -1.0, 0.0], [3.0, 2.0, 3.0])[1]
end
ms = (time_ns() - t0) / 1e6
println("tridiag_thomas_jl_d58 ms=", ms, " sink=", sink)
