include("burgers_energy_eval.jl")
using Test
using .BurgersEnergy

@testset "burgers_energy_eval tests" begin
    @test isapprox(l2_energy_integral(10.0, 0.2), 1.0, atol=1e-7)
end
