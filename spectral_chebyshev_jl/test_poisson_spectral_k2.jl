include("poisson_spectral_k2.jl")
using Test
using .PoissonSpectral

@testset "poisson_spectral_k2 tests" begin
    @test isapprox(laplacian_k2(3.0, 4.0), -25.0, atol=1e-7)
end
