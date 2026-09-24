include("simulated_annealing_p.jl")
using Test
using .AnnealingP

@testset "simulated_annealing_p tests" begin
    @test isapprox(boltzmann_probability(0.0, 1.0), 1.0, atol=1e-7)
end
