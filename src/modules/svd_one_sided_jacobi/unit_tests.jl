using Test, LinearAlgebra

@testset "Hestenes Jacobi SVD Exact" begin
    A = [3.0 1.0 0.5; 0.0 2.0 1.0; 1.0 -1.0 4.0; 0.5 0.5 -0.5]
    res = jacobi_svd(HestenesJacobiSvd(40, 1e-13), A)
    @test verify_svd_invariants(A, res)
    @test isapprox(res.S, svdvals(A); atol = 1e-10)
end
