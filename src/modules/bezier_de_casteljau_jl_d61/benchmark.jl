t0 = time_ns()
sink = 0.0
for _ in 1:100
    pts = [0.0 0.0; 1.0 2.0; 2.0 0.0]
    sink += de_casteljau(pts, 0.3)[1]
end
ms = (time_ns() - t0) / 1e6
println("bezier_de_casteljau_jl_d61 ms=", ms, " sink=", sink)
