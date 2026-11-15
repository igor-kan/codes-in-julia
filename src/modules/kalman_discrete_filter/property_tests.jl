using Test, Random, LinearAlgebra

@testset "Symmetric Positive-Semidefinite Preservation" begin
    rng = MersenneTwister(41)
    model = LinearStateSpaceModel([0.9 0.2; -0.1 0.85], [1.0 0.0], 0.1 * Matrix{Float64}(I, 2, 2), fill(0.25, 1, 1))
    obs = randn(rng, 1, 40)
    lls = evaluate_q_scales(model, obs, [0.0, 0.0], Matrix{Float64}(I, 2, 2), [0.5, 1.0, 2.0])
    @test all(isfinite, lls)
end
