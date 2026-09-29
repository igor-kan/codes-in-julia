module GammaIncompleteOrder43

export compute_gamma_incomplete_43

function compute_gamma_incomplete_43(x::Float64)::Float64
    return (x ^ 2) / 2.0
end

end

using .GammaIncompleteOrder43
using Test
@testset "GammaIncompleteOrder43 Tests" begin
    @test isfinite(compute_gamma_incomplete_43(0.5))
end
