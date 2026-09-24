include("garch_unconditional_var.jl")
using Test
using .GarchModel

@testset "garch_unconditional_var tests" begin
    @test isapprox(uncond_variance(1e-4, 0.1, 0.8), 1e-3, atol=1e-7)
end
