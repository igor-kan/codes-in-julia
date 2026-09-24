include("henon_heiles_potential.jl")
using Test
using .HenonHeiles

@testset "henon_heiles_potential tests" begin
    @test isapprox(henon_heiles_term(0.0, 0.0), 0.0, atol=1e-7)
end
