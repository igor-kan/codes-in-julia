t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += dbscan_labels([0.0 0.0; 0.1 0.0; 5.0 5.0], 0.5, 2).clusters
end
ms = (time_ns() - t0) / 1e6
println("dbscan_density_cluster_jl_d61 ms=", ms, " sink=", sink)
