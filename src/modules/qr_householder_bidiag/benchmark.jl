t0 = time_ns()
acc = 0.0
for _it in 1:50
  A = randn(16, 10)
  f = bidiagonalize(HouseholderBidiag(false), A)
  acc += sum(abs2, f.diag)
end
ms = (time_ns() - t0) / 50e6
println("qr_householder_bidiag ms=", round(ms; digits=4), " acc=", acc)
