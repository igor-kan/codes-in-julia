include("milstein_ito_correction.jl")
using Test
using .MilsteinSDE

@testset "milstein_ito_correction tests" begin
    @test isapprox(milstein_ito_term(2.0, 1.0, 0.01, 0.1), 0.0, atol=1e-7)
end
