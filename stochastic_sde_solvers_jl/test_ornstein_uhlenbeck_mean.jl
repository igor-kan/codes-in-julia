include("ornstein_uhlenbeck_mean.jl")
using Test
using .OrnsteinOU

@testset "ornstein_uhlenbeck_mean tests" begin
    @test isapprox(ou_stationary_variance(2.0, 1.0), 2.0, atol=1e-7)
end
