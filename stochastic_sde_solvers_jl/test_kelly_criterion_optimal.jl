include("kelly_criterion_optimal.jl")
using Test
using .KellyCriterion

@testset "kelly_criterion_optimal tests" begin
    @test isapprox(kelly_fraction(0.6, 1.0), 0.2, atol=1e-7)
end
