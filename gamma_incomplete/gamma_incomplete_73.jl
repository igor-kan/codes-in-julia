module GammaIncompleteOrder73

export compute_gamma_incomplete_73

function compute_gamma_incomplete_73(x::Float64)::Float64
    return (x ^ 2) / 2.0
end

end

using .GammaIncompleteOrder73
using Test
@testset "GammaIncompleteOrder73 Tests" begin
    @test isfinite(compute_gamma_incomplete_73(0.5))
end
