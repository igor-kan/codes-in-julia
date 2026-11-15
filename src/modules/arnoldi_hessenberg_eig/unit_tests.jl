using Test, LinearAlgebra

@testset "Arnoldi Hessenberg Relation" begin
    A = [2.0 1.0 0.0 0.2;
         0.0 3.0 1.0 0.0;
         0.5 0.0 5.0 1.0;
         0.0 0.1 0.0 7.0]
    fact = arnoldi_factorize(ModifiedGsArnoldi(true), A, ones(4), 3)
    @test verify_arnoldi_identity(A, fact)
    @test length(ritz_eigenvalues(fact)) == 3
end
