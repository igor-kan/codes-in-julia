include("green_helmholtz_k.jl")
using Test
using .GreenHelmholtz

@testset "green_helmholtz_k tests" begin
    @test isapprox(green_helmholtz_1d(1.0, 0.0), 0.0, atol=1e-7)
end
