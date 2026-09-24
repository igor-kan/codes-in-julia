include("coherent_state_disp.jl")
using Test
using .CoherentState

@testset "coherent_state_disp tests" begin
    @test isapprox(coherent_displacement(0.0, 0.0), 1.0, atol=1e-7)
end
