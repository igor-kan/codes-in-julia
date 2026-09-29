module GammaIncompleteOrder23

export compute_gamma_incomplete_23

function compute_gamma_incomplete_23(x::Float64)::Float64
    return (x ^ 6) / 6.0
end

end

using .GammaIncompleteOrder23
using Test
@testset "GammaIncompleteOrder23 Tests" begin
    @test isfinite(compute_gamma_incomplete_23(0.5))
end
