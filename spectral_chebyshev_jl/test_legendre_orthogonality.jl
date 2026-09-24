include("legendre_orthogonality.jl")
using Test
using .LegendreNorm

@testset "legendre_orthogonality tests" begin
    @test isapprox(legendre_norm_sq(0), 2.0, atol=1e-7)
end
