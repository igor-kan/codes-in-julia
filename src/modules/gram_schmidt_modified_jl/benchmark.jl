t0 = time_ns()
sink = 0.0
for _ in 1:100
    f = mgs_qr([1.0 2.0; 3.0 4.0]); sink += f.R[1, 1]
end
ms = (time_ns() - t0) / 1e6
println("gram_schmidt_modified_jl ms=", ms, " sink=", sink)
