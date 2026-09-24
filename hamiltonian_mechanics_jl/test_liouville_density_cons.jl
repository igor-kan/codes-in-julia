include("liouville_density_cons.jl")
using Test
using .LiouvillePhase

@testset "liouville_density_cons tests" begin
    @test isapprox(phase_space_divergence(1.0, -1.0), 0.0, atol=1e-7)
end
