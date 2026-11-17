t0 = time_ns()
sink = 0.0
sys=TridiagSystem(fill(-1.0,63),fill(4.0,64),fill(-1.0,63)); r=ones(64); x=zeros(64); for _ in 1:100; solve_thomas!(ThomasSolver(),x,sys,r); sink+=x[1]; end
ms = (time_ns() - t0) / 1e6
println("tridiagonal_thomas_jl ms=", ms, " sink=", sink)
