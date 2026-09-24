include("hermite_weight_func.jl")
using Test
using .HermiteWeight

@testset "hermite_weight_func tests" begin
    @test isapprox(hermite_weight(0.0), 1.0, atol=1e-7)
end
