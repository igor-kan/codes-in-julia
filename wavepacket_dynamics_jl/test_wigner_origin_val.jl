include("wigner_origin_val.jl")
using Test
using .WignerDist

@testset "wigner_origin_val tests" begin
    @test isapprox(wigner_at_origin(1.0), 1.0 / pi, atol=1e-7)
end
