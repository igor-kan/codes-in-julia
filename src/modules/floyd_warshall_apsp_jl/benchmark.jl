t0 = time_ns()
sink = 0.0
W=fill(10.0,16,16); for i in 1:16; W[i,i]=0.0; end; for _ in 1:20; sink+=solve_apsp(FloydWarshallSolver(),W).dist[1,16]; end
ms = (time_ns() - t0) / 1e6
println("floyd_warshall_apsp_jl ms=", ms, " sink=", sink)
