t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += jacobi_eig2x2(4.0, 1.5, 2.0)[1]
end
ms = (time_ns() - t0) / 1e6
println("svd_jacobi_2x2_d56 ms=", ms, " sink=", sink)
