t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += rk4_scalar((t, y) -> -y, 1.0, 0.0, 0.05, 20)
end
ms = (time_ns() - t0) / 1e6
println("rk4_ode_jl_d59 ms=", ms, " sink=", sink)
