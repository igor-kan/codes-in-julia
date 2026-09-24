include("runge_lenz_vector_mag.jl")
using Test
using .RungeLenz

@testset "runge_lenz_vector_mag tests" begin
    @test isapprox(eccentricity_magnitude(0.25), 0.5, atol=1e-7)
end
