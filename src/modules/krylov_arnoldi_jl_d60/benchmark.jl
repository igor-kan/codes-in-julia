t0 = time_ns()
sink = 0.0
for _ in 1:100
    a = [4.0 1.0; 1.0 3.0]
    sink += arnoldi_iterate(a, [1.0, 0.0], 1).h[1, 1]
end
ms = (time_ns() - t0) / 1e6
println("krylov_arnoldi_jl_d60 ms=", ms, " sink=", sink)
