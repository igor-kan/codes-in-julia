t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += bwt_encode("banana").index
end
ms = (time_ns() - t0) / 1e6
println("burrows_wheeler_jl_d61 ms=", ms, " sink=", sink)
