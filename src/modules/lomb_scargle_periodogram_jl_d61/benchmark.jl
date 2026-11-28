t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += lomb_scargle_power(collect(0.0:0.05:6.2), sin.(collect(0.0:0.05:6.2)), 1.0)
end
ms = (time_ns() - t0) / 1e6
println("lomb_scargle_periodogram_jl_d61 ms=", ms, " sink=", sink)
