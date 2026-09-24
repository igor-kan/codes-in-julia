include("merton_jump_compensator.jl")
using Test
using .MertonJump

@testset "merton_jump_compensator tests" begin
    @test isapprox(jump_drift_compensator(0.5, 0.1), 0.05, atol=1e-7)
end
