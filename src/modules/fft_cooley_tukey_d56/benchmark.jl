t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += real(fft_rad2([1.0, 2.0, 3.0, 4.0])[1])
end
ms = (time_ns() - t0) / 1e6
println("fft_cooley_tukey_d56 ms=", ms, " sink=", sink)
