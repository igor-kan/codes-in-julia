t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += sum(lanczos_tridiag([2.0 1.0; 1.0 2.0], [1.0, 0.0], 2).alpha)
end
ms = (time_ns() - t0) / 1e6
println("lanczos_tridiag_krylov_jl ms=", ms, " sink=", sink)
