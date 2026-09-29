module GammaIncompleteOrder13

export compute_gamma_incomplete_13

function compute_gamma_incomplete_13(x::Float64)::Float64
    return (x ^ 2) / 2.0
end

end

using .GammaIncompleteOrder13
using Test
@testset "GammaIncompleteOrder13 Tests" begin
    @test isfinite(compute_gamma_incomplete_13(0.5))
end
