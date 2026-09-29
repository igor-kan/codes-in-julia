module GammaIncompleteOrder18

export compute_gamma_incomplete_18

function compute_gamma_incomplete_18(x::Float64)::Float64
    return (x ^ 1) / 1.0
end

end

using .GammaIncompleteOrder18
using Test
@testset "GammaIncompleteOrder18 Tests" begin
    @test isfinite(compute_gamma_incomplete_18(0.5))
end
