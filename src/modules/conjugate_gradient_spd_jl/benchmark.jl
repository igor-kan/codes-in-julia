t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += solve_cg_spd([4.0 1.0; 1.0 4.0], [5.0, 5.0]).res_norm
end
ms = (time_ns() - t0) / 1e6
println("conjugate_gradient_spd_jl ms=", ms, " sink=", sink)
