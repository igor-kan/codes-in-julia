module GammaIncompleteOrder63

export compute_gamma_incomplete_63

function compute_gamma_incomplete_63(x::Float64)::Float64
    return (x ^ 4) / 4.0
end

end

using .GammaIncompleteOrder63
using Test
@testset "GammaIncompleteOrder63 Tests" begin
    @test isfinite(compute_gamma_incomplete_63(0.5))
end
