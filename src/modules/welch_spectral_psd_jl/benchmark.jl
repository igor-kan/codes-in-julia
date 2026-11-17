t0 = time_ns()
sink = 0.0
est=WelchEstimator(WelchConfig(16,8)); s=ones(64); for _ in 1:30; sink+=sum(welch_psd(est,s)); end
ms = (time_ns() - t0) / 1e6
println("welch_spectral_psd_jl ms=", ms, " sink=", sink)
