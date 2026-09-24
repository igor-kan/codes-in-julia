include("von_neumann_entropy.jl")
using Test
using .VonNeumann

@testset "von_neumann_entropy tests" begin
    @test isapprox(entropy_binary(0.5), 1.0, atol=1e-7)
end
