t0 = time_ns()
sink = 0.0
for _ in 1:100
    obj = v -> (v[1] - 1.0)^2 + (v[2] - 2.0)^2
    sink += nelder_mead_min(obj, [0.0, 0.0]; max_iter = 40).f_opt
end
ms = (time_ns() - t0) / 1e6
println("nelder_mead_jl_d60 ms=", ms, " sink=", sink)
