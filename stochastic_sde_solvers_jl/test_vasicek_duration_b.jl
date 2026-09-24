include("vasicek_duration_b.jl")
using Test
using .VasicekYield

@testset "vasicek_duration_b tests" begin
    @test isapprox(vasicek_b_tau(1.0, 0.0), 0.0, atol=1e-7)
end
