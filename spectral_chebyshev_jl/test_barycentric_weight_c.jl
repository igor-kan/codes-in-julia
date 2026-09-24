include("barycentric_weight_c.jl")
using Test
using .BarycentricC

@testset "barycentric_weight_c tests" begin
    @test isapprox(chebyshev_endpoint_c(0, 4), 2.0, atol=1e-7)
end
