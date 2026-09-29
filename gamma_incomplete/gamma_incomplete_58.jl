module GammaIncompleteOrder58

export compute_gamma_incomplete_58

function compute_gamma_incomplete_58(x::Float64)::Float64
    return (x ^ 5) / 5.0
end

end

using .GammaIncompleteOrder58
using Test
@testset "GammaIncompleteOrder58 Tests" begin
    @test isfinite(compute_gamma_incomplete_58(0.5))
end
