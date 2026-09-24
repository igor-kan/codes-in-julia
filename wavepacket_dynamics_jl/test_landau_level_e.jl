include("landau_level_e.jl")
using Test
using .LandauLevels

@testset "landau_level_e tests" begin
    @test isapprox(landau_energy(0, 2.0), 1.0, atol=1e-7)
end
