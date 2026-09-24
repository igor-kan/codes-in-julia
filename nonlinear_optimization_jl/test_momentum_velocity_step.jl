include("momentum_velocity_step.jl")
using Test
using .MomentumOpt

@testset "momentum_velocity_step tests" begin
    @test isapprox(momentum_step(0.0, 0.9, 0.01, 10.0), 0.1, atol=1e-7)
end
