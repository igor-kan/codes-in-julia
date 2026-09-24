include("adam_first_moment_step.jl")
using Test
using .AdamOpt

@testset "adam_first_moment_step tests" begin
    @test isapprox(adam_m(0.0, 0.9, 10.0), 1.0, atol=1e-7)
end
