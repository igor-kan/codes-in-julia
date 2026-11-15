using Test

@testset "Piecewise Additive Property" begin
    r_full = quad_gk(GaussKronrod15(12), x -> exp(-x^2), -2.0, 2.0)
    r_split = parallel_piecewise_gk(x -> exp(-x^2), [-2.0, -0.5, 0.5, 2.0])
    @test isapprox(r_full.integral, r_split.integral; atol = 1e-10)
end
