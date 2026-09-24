include("secant_step_scalar.jl")
using Test
using .SecantScalar

@testset "secant_step_scalar tests" begin
    @test isapprox(secant_root(2.0, 1.0, 2.0, 1.0), 0.0, atol=1e-7)
end
