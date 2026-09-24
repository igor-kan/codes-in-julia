include("schrodinger_fft_step.jl")
using Test
using .SchrodingerFFT

@testset "schrodinger_fft_step tests" begin
    @test isapprox(abs(propagate_free_phase(1.0, 0.1)), 1.0, atol=1e-7)
end
