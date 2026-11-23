t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += fit_ridge([1.0 2.0; 2.0 1.0; 3.0 4.0], [5.0, 4.0, 11.0], 1.0)[1]
end
ms = (time_ns() - t0) / 1e6
println("ridge_normal_jl_d58 ms=", ms, " sink=", sink)
