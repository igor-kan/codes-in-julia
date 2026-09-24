include("gradient_descent_1d.jl")
using Test
using .GradientDescent

@testset "gradient_descent_1d tests" begin
    @test isapprox(gd_step(5.0, 0.1, 2.0), 4.8, atol=1e-7)
end
