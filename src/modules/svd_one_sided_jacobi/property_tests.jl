using Test, Random, LinearAlgebra

@testset "Random Tall Rectangular Matrices" begin
    rng = MersenneTwister(99)
    for _ in 1:6
        A = randn(rng, 10, 5)
        res = jacobi_svd(HestenesJacobiSvd(50, 1e-12), A)
        @test verify_svd_invariants(A, res)
        @test isapprox(res.S, svdvals(A); atol = 1e-9)
    end
end
