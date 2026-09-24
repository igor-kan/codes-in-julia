include("pendulum_frequency_shift.jl")
using Test
using .PendulumFreq

@testset "pendulum_frequency_shift tests" begin
    @test isapprox(nonlinear_pendulum_omega(1.0, 0.0), 1.0, atol=1e-7)
end
