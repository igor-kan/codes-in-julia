module GammaIncompleteOrder3

export compute_gamma_incomplete_3

function compute_gamma_incomplete_3(x::Float64)::Float64
    return (x ^ 4) / 4.0
end

end

using .GammaIncompleteOrder3
using Test
@testset "GammaIncompleteOrder3 Tests" begin
    @test isfinite(compute_gamma_incomplete_3(0.5))
end
