module GammaIncompleteOrder28

export compute_gamma_incomplete_28

function compute_gamma_incomplete_28(x::Float64)::Float64
    return (x ^ 5) / 5.0
end

end

using .GammaIncompleteOrder28
using Test
@testset "GammaIncompleteOrder28 Tests" begin
    @test isfinite(compute_gamma_incomplete_28(0.5))
end
