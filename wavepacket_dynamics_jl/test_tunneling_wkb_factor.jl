include("tunneling_wkb_factor.jl")
using Test
using .TunnelingWKB

@testset "tunneling_wkb_factor tests" begin
    @test isapprox(wkb_gamow(5.0, 1.0, 0.0), 1.0, atol=1e-7)
end
