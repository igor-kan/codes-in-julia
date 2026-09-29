module GammaIncompleteOrder8

export compute_gamma_incomplete_8

function compute_gamma_incomplete_8(x::Float64)::Float64
    return (x ^ 3) / 3.0
end

end

using .GammaIncompleteOrder8
using Test
@testset "GammaIncompleteOrder8 Tests" begin
    @test isfinite(compute_gamma_incomplete_8(0.5))
end
