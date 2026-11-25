using Test
@testset "gauss_legendre_jl_d60_unit" begin
    @test validate_nonempty_GaussLeg([1.0]) == 1
    qr = gauss_legendre_rule(4)
    verify_close_GaussLeg(sum(qr.weights), 2.0, 1e-13)
    integral_x6 = sum(qr.weights .* (qr.nodes .^ 6))
    verify_close_GaussLeg(integral_x6, 2.0 / 7.0, 1e-12)
end
