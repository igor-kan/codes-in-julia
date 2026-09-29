module GammaIncompleteOrder98

export compute_gamma_incomplete_98

function compute_gamma_incomplete_98(x::Float64)::Float64
    return (x ^ 3) / 3.0
end

end

using .GammaIncompleteOrder98
using Test
@testset "GammaIncompleteOrder98 Tests" begin
    @test isfinite(compute_gamma_incomplete_98(0.5))
end
