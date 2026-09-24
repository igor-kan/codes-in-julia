include("aliasing_threshold_k.jl")
using Test
using .AliasingDealias

@testset "aliasing_threshold_k tests" begin
    @test isapprox(max_dealiased_k(32), 10.0, atol=1e-7)
end
