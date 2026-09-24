include("geometric_brownian_mean.jl")
using Test
using .GeometricBM

@testset "geometric_brownian_mean tests" begin
    @test isapprox(gbm_expected_val(100.0, 0.0, 1.0), 100.0, atol=1e-7)
end
