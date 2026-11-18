t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += fit_exp_decay_lm([0.0, 1.0], [1.0, 0.5], 0.5).param
end
ms = (time_ns() - t0) / 1e6
println("levenberg_marquardt_1d_jl ms=", ms, " sink=", sink)
