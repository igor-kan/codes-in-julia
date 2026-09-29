module GammaIncompleteOrder113

export compute_gamma_incomplete_113

function compute_gamma_incomplete_113(x::Float64)::Float64
    return (x ^ 6) / 6.0
end

end

using .GammaIncompleteOrder113
using Test
@testset "GammaIncompleteOrder113 Tests" begin
    @test isfinite(compute_gamma_incomplete_113(0.5))
end
