include("density_purity_val.jl")
using Test
using .DensityPurity

@testset "density_purity_val tests" begin
    @test isapprox(purity_2x2(0.5, 0.5), 0.5, atol=1e-7)
end
