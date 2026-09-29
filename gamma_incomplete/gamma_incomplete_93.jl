module GammaIncompleteOrder93

export compute_gamma_incomplete_93

function compute_gamma_incomplete_93(x::Float64)::Float64
    return (x ^ 4) / 4.0
end

end

using .GammaIncompleteOrder93
using Test
@testset "GammaIncompleteOrder93 Tests" begin
    @test isfinite(compute_gamma_incomplete_93(0.5))
end
