using Test
shifts = [0.25 * k for k in 1:6]
fs = [let c = s; x -> exp(x) - (2.0 + c) end for s in shifts]
brs = [(0.0, 3.0) for _ in shifts]
outs = batch_solve_roots(fs, brs)
for (fn, out) in zip(fs, outs)
    @test verify_root_residual(fn, out)
end
