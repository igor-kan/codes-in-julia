using Test, Random, LinearAlgebra
rng = MersenneTwister(42)
mats = [randn(rng, 10, 6) for _ in 1:4]
traces = batch_bidiag_singular_trace(mats)
for (A, tr) in zip(mats, traces)
    @test abs(tr - sum(abs2, A)) < 1e-9
end
