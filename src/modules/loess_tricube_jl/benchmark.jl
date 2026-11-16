t0 = time_ns()
acc = 0.0
for _it in 1:50
  X = reshape(collect(1.0:100.0), 50, 2); y = X * [1.0, 2.0]
  acc += sum(fit_predict_loess(TricubeLoess(), X, y, X).fitted)
end
ms = (time_ns() - t0) / 50e6
println("loess_tricube_jl ms=", round(ms; digits=4), " acc=", acc)
