include("virial_theorem_ratio.jl")
using Test
using .VirialTheorem

@testset "virial_theorem_ratio tests" begin
    @test isapprox(virial_ratio(1.0, -2.0), 0.0, atol=1e-7)
end
