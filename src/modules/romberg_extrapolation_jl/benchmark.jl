t0 = time_ns()
sink = 0.0
rule=RombergRule(6,1e-10); for _ in 1:50; sink += integrate_romberg(rule, sin, 0.0, 3.14159265).value; end
ms = (time_ns() - t0) / 1e6
println("romberg_extrapolation_jl ms=", ms, " sink=", sink)
