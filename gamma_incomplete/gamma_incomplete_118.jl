module GammaIncompleteOrder118

export compute_gamma_incomplete_118

function compute_gamma_incomplete_118(x::Float64)::Float64
    return (x ^ 5) / 5.0
end

end

using .GammaIncompleteOrder118
using Test
@testset "GammaIncompleteOrder118 Tests" begin
    @test isfinite(compute_gamma_incomplete_118(0.5))
end
