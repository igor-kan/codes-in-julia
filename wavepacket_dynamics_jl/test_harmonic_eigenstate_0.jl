include("harmonic_eigenstate_0.jl")
using Test
using .HarmonicQHO

@testset "harmonic_eigenstate_0 tests" begin
    @test isapprox(qho_ground_state(0.0), 1.0 / pi^0.25, atol=1e-7)
end
