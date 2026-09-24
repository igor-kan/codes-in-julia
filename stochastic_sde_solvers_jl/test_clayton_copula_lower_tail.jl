include("clayton_copula_lower_tail.jl")
using Test
using .CopulaTail

@testset "clayton_copula_lower_tail tests" begin
    @test isapprox(clayton_lambda_l(1.0), 0.5, atol=1e-7)
end
