include("bloch_sphere_z.jl")
using Test
using .BlochSphere

@testset "bloch_sphere_z tests" begin
    @test isapprox(bloch_z_coordinate(0.0), 1.0, atol=1e-7)
end
