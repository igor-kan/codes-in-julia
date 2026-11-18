t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += eval_clenshaw([1.0, 2.0, 3.0], 0.25)
end
ms = (time_ns() - t0) / 1e6
println("clenshaw_chebyshev_sum_jl ms=", ms, " sink=", sink)
