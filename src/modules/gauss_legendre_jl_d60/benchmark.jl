t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += gauss_legendre_rule(4).weights[1]
end
ms = (time_ns() - t0) / 1e6
println("gauss_legendre_jl_d60 ms=", ms, " sink=", sink)
