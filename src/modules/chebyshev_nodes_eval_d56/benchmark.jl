t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += clenshaw_cheb_eval([1.0, -0.5, 0.25, 0.125], 0.4)
end
ms = (time_ns() - t0) / 1e6
println("chebyshev_nodes_eval_d56 ms=", ms, " sink=", sink)
