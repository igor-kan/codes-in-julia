include("hawkes_branching_ratio.jl")
using Test
using .HawkesPoint

@testset "hawkes_branching_ratio tests" begin
    @test isapprox(branching_factor(0.8, 1.0), 0.8, atol=1e-7)
end
