t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += composite_simpson(x -> x*x, 0.0, 3.0, 10)
end
ms = (time_ns() - t0) / 1e6
println("simpson_comp_jl_d58 ms=", ms, " sink=", sink)
