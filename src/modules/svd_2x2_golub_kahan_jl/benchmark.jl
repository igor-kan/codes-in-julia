t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += svd_values_2x2([1.0 2.0; 3.0 4.0]).s1
end
ms = (time_ns() - t0) / 1e6
println("svd_2x2_golub_kahan_jl ms=", ms, " sink=", sink)
