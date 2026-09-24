include("euler_maruyama_step_jl.jl")
using Test
using .EulerMaruyama

@testset "euler_maruyama_step_jl tests" begin
    @test isapprox(em_step(10.0, 1.0, 2.0, 0.1, 0.0), 10.1, atol=1e-7)
end
