module GammaIncompleteOrder108

export compute_gamma_incomplete_108

function compute_gamma_incomplete_108(x::Float64)::Float64
    return (x ^ 1) / 1.0
end

end

using .GammaIncompleteOrder108
using Test
@testset "GammaIncompleteOrder108 Tests" begin
    @test isfinite(compute_gamma_incomplete_108(0.5))
end
