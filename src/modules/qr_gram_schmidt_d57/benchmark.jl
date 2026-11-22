t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += mgs_qr([1.0 2.0; 3.0 4.0])[2][1, 1]
end
ms = (time_ns() - t0) / 1e6
println("qr_gram_schmidt_d57 ms=", ms, " sink=", sink)
