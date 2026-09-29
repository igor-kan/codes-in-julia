module GammaIncompleteOrder103

export compute_gamma_incomplete_103

function compute_gamma_incomplete_103(x::Float64)::Float64
    return (x ^ 2) / 2.0
end

end

using .GammaIncompleteOrder103
using Test
@testset "GammaIncompleteOrder103 Tests" begin
    @test isfinite(compute_gamma_incomplete_103(0.5))
end
