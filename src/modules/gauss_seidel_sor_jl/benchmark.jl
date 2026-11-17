t0 = time_ns()
sink = 0.0
A=[4.0 1.0; 1.0 4.0]; b=[5.0,5.0]; s=SorSolver(SorConfig(1.1,1e-9,50)); for _ in 1:50; sink += sum(solve_sor(s,A,b)); end
ms = (time_ns() - t0) / 1e6
println("gauss_seidel_sor_jl ms=", ms, " sink=", sink)
