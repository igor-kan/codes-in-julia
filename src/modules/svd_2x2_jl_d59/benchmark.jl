t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += sym2_spectrum(5.0, 2.0, 4.0)[1]
end
ms = (time_ns() - t0) / 1e6
println("svd_2x2_jl_d59 ms=", ms, " sink=", sink)
