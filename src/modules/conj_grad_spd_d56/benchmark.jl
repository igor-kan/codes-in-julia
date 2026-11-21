t0 = time_ns()
sink = 0.0
for _ in 1:100
    sink += conjugate_gradient([4.0 1.0; 1.0 3.0], [1.0, 2.0])[1]
end
ms = (time_ns() - t0) / 1e6
println("conj_grad_spd_d56 ms=", ms, " sink=", sink)
