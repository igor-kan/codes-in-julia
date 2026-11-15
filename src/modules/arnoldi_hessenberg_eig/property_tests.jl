using Test, Random, LinearAlgebra

@testset "Full-Space Exact Spectrum Recovery" begin
    rng = MersenneTwister(7)
    for _ in 1:6
        A = randn(rng, 8, 8)
        fact = arnoldi_factorize(ModifiedGsArnoldi(true), A, ones(8), 8)
        @test verify_arnoldi_identity(A, fact)
        r = sort(abs.(ritz_eigenvalues(fact)))
        ex = sort(abs.(eigvals(A)))
        @test isapprox(r, ex; atol = 1e-8)
    end
end
