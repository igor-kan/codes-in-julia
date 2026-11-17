t0 = time_ns()
sink = 0.0
k=compute_sg_weights(SavitzkyGolay(3,2)); y=collect(1.0:128.0); for _ in 1:50; sink+=apply_sg_interior(k,y)[10]; end
ms = (time_ns() - t0) / 1e6
println("savitzky_golay_filter_jl ms=", ms, " sink=", sink)
