t0 = time_ns()
acc = 0.0
for _it in 1:50
  r = [0.7^k for k in 0:63]; b = ones(64)
  acc += solve_sym_toeplitz(LevinsonToeplitzSolver(), r, b).prediction_error
end
ms = (time_ns() - t0) / 50e6
println("levinson_toeplitz_jl ms=", round(ms; digits=4), " acc=", acc)
