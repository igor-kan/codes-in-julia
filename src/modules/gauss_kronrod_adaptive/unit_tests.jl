using Test

@testset "Gauss-Kronrod Precision" begin
    @test verify_gk_weights()
    res = quad_gk(GaussKronrod15(16), x -> 1.0 / sqrt(x), 1e-4, 1.0; rtol = 1e-9, atol = 1e-11)
    exact = 2.0 * (1.0 - sqrt(1e-4))
    @test isapprox(res.integral, exact; atol = 1e-8)
end
