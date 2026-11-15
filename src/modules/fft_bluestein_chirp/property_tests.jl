using Test, Random

@testset "Composite & Prime Random Signals" begin
    rng = MersenneTwister(11)
    for n in (1, 5, 12, 19, 31)
        x = randn(rng, ComplexF64, n)
        X = execute_bluestein(build_bluestein_plan(n), x)
        @test verify_parseval(x, X)
        @test isapprox(X, naive_dft_reference(x); atol = 1e-9)
    end
end
