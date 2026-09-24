include("heston_drift_variance.jl")
using Test
using .HestonVol

@testset "heston_drift_variance tests" begin
    @test isapprox(variance_drift(1.5, 0.04, 0.04), 0.0, atol=1e-7)
end
