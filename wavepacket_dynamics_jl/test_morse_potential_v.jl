include("morse_potential_v.jl")
using Test
using .MorsePotential

@testset "morse_potential_v tests" begin
    @test isapprox(morse_v(1.0, 1.0, 5.0, 1.0), 0.0, atol=1e-7)
end
