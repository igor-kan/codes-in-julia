include("wolfe_curvature_cond.jl")
using Test
using .WolfeCurvature

@testset "wolfe_curvature_cond tests" begin
    @test isapprox(wolfe_condition(0.5, 0.9, 1.0) ? 1.0 : 0.0, 1.0, atol=1e-7)
end
