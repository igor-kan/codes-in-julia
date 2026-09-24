include("kuramoto_flame_omega.jl")
using Test
using .KuramotoFlame

@testset "kuramoto_flame_omega tests" begin
    @test isapprox(growth_rate_ks(0.5), 0.1875, atol=1e-7)
end
