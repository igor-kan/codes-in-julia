include("infinite_well_energy.jl")
using Test
using .InfiniteWell

@testset "infinite_well_energy tests" begin
    @test isapprox(well_energy(1, pi), 0.5, atol=1e-7)
end
