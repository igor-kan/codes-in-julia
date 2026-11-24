t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += barycentric_eval([0.0, 1.0, 3.0], [1.0, 2.0, 10.0], 2.0)
end
ms = (time_ns() - t0) / 1e6
println("lagrange_bary_jl_d59 ms=", ms, " sink=", sink)
