include("fourier_modal_decay.jl")
using Test
using .FourierDecay

@testset "fourier_modal_decay tests" begin
    @test isapprox(fourier_analytic_decay(0.0, 1.0), 1.0, atol=1e-7)
end
