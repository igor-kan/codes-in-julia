using Test
@testset "gauss_legendre_jl_d60_props" begin
    @test sum(parallel_norms_GaussLeg([[1.0, 2.0], [3.0]])) == 14.0
    qr = gauss_legendre_rule(5)
    odd_int = sum(qr.weights .* (qr.nodes .^ 7))
    verify_close_GaussLeg(odd_int, 0.0, 1e-13)
    @test all(qr.weights .> 0.0)
end
