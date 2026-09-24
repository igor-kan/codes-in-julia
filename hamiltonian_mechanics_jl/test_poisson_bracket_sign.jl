include("poisson_bracket_sign.jl")
using Test
using .PoissonBracket

@testset "poisson_bracket_sign tests" begin
    @test isapprox(bracket_antisymmetry(5.0), -5.0, atol=1e-7)
end
