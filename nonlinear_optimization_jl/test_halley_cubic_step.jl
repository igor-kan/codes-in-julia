include("halley_cubic_step.jl")
using Test
using .HalleyScalar

@testset "halley_cubic_step tests" begin
    @test isapprox(halley_root(1.0, 0.0, 1.0, 0.0), 1.0, atol=1e-7)
end
