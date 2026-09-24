include("action_angle_variable.jl")
using Test
using .ActionAngle

@testset "action_angle_variable tests" begin
    @test isapprox(action_variable_j(10.0, 2.0), 5.0, atol=1e-7)
end
