using Test
r = [exp(-0.25 * k^2) + (k == 0 ? 1.0 : 0.0) for k in 0:14]
rhss = [[cos(Float64(i * m)) for i in 1:15] for m in 1:4]
outs = batch_solve_toeplitz(r, rhss)
for (b, res) in zip(rhss, outs)
    @test verify_toeplitz_residual(r, b, res)
end
