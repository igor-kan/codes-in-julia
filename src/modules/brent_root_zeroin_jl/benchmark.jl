t0 = time_ns()
acc = 0.0
for _it in 1:50
  acc += find_root(BrentSolver(), x -> cos(x) - x, 0.0, 1.0).root
end
ms = (time_ns() - t0) / 50e6
println("brent_root_zeroin_jl ms=", round(ms; digits=4), " acc=", acc)
