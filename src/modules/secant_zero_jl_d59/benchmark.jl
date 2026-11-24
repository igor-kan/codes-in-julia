t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += secant_solve(x -> x*x - 2.0, 1.0, 2.0)
end
ms = (time_ns() - t0) / 1e6
println("secant_zero_jl_d59 ms=", ms, " sink=", sink)
