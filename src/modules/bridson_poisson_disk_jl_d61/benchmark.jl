t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += length(bridson_poisson_disk(8.0, 8.0, 1.0; k = 10, seed = 3).points)
end
ms = (time_ns() - t0) / 1e6
println("bridson_poisson_disk_jl_d61 ms=", ms, " sink=", sink)
