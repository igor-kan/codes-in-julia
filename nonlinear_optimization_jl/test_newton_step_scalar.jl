include("newton_step_scalar.jl")
using Test
using .NewtonScalar

@testset "newton_step_scalar tests" begin
    @test isapprox(newton_raphson(2.0, 4.0, 4.0), 1.0, atol=1e-7)
end
