include("allen_cahn_pot_min.jl")
using Test
using .AllenCahnPot

@testset "allen_cahn_pot_min tests" begin
    @test isapprox(double_well_potential(1.0), 0.0, atol=1e-7)
end
