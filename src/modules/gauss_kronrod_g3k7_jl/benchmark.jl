t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += integrate_g3k7(x -> x^2, 0.0, 1.0).k7
end
ms = (time_ns() - t0) / 1e6
println("gauss_kronrod_g3k7_jl ms=", ms, " sink=", sink)
