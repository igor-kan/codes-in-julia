include("adam_second_moment_step.jl")
using Test
using .AdamSecond

@testset "adam_second_moment_step tests" begin
    @test isapprox(adam_v(0.0, 0.99, 10.0), 1.0, atol=1e-7)
end
