t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += real(muller_root([-2.0, 0.0, 1.0], 1.0 + 0.0im; max_iter = 20).root)
end
ms = (time_ns() - t0) / 1e6
println("muller_complex_root_jl_d61 ms=", ms, " sink=", sink)
