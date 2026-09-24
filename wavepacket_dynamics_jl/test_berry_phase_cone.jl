include("berry_phase_cone.jl")
using Test
using .BerryPhase

@testset "berry_phase_cone tests" begin
    @test isapprox(berry_phase_solid_angle(2.0*pi), -pi, atol=1e-7)
end
