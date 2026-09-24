include("chebyshev_gauss_node.jl")
using Test
using .ChebyshevNodes

@testset "chebyshev_gauss_node tests" begin
    @test isapprox(gauss_lobatto_node(0, 4), 1.0, atol=1e-7)
end
