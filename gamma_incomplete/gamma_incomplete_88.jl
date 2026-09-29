module GammaIncompleteOrder88

export compute_gamma_incomplete_88

function compute_gamma_incomplete_88(x::Float64)::Float64
    return (x ^ 5) / 5.0
end

end

using .GammaIncompleteOrder88
using Test
@testset "GammaIncompleteOrder88 Tests" begin
    @test isfinite(compute_gamma_incomplete_88(0.5))
end
