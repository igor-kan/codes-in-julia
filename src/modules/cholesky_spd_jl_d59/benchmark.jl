t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += chol_factor([4.0 2.0; 2.0 5.0])[2, 2]
end
ms = (time_ns() - t0) / 1e6
println("cholesky_spd_jl_d59 ms=", ms, " sink=", sink)
