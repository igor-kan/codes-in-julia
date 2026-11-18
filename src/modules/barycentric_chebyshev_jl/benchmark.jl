t0 = time_ns()
sink = 0.0
for _ in 1:100
    m = cheb_mesh(4); sink += eval_bary_cheb(m, ones(5), 0.25)
end
ms = (time_ns() - t0) / 1e6
println("barycentric_chebyshev_jl ms=", ms, " sink=", sink)
