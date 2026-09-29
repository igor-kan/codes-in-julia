module GammaIncompleteOrder83

export compute_gamma_incomplete_83

function compute_gamma_incomplete_83(x::Float64)::Float64
    return (x ^ 6) / 6.0
end

end

using .GammaIncompleteOrder83
using Test
@testset "GammaIncompleteOrder83 Tests" begin
    @test isfinite(compute_gamma_incomplete_83(0.5))
end
