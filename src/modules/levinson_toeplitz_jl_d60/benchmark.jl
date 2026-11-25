t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += levinson_solve([4.0, 1.0, 0.5], [1.0, 2.0, 3.0]).x[1]
end
ms = (time_ns() - t0) / 1e6
println("levinson_toeplitz_jl_d60 ms=", ms, " sink=", sink)
