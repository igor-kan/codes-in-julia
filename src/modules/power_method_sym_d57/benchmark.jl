t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += top2_sym_eigs([5.0 1.0; 1.0 3.0])[1]
end
ms = (time_ns() - t0) / 1e6
println("power_method_sym_d57 ms=", ms, " sink=", sink)
