t0 = time_ns()
sink = 0.0
for _ in 1:100
    a = [1.0 2.0; 3.0 4.0]
    sink += strassen_mul(a, a)[1, 1]
end
ms = (time_ns() - t0) / 1e6
println("strassen_recursive_matmul_jl_d61 ms=", ms, " sink=", sink)
