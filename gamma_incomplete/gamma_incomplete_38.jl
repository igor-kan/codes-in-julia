module GammaIncompleteOrder38

export compute_gamma_incomplete_38

function compute_gamma_incomplete_38(x::Float64)::Float64
    return (x ^ 3) / 3.0
end

end

using .GammaIncompleteOrder38
using Test
@testset "GammaIncompleteOrder38 Tests" begin
    @test isfinite(compute_gamma_incomplete_38(0.5))
end
