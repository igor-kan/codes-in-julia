include("delta_well_bound.jl")
using Test
using .DeltaWell

@testset "delta_well_bound tests" begin
    @test isapprox(delta_bound_energy(2.0), -2.0, atol=1e-7)
end
