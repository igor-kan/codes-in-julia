include("kepler_semimajor_axis.jl")
using Test
using .KeplerOrbit

@testset "kepler_semimajor_axis tests" begin
    @test isapprox(semimajor_axis(-1.0, 2.0), 1.0, atol=1e-7)
end
