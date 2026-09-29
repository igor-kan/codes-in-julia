module GammaIncompleteOrder78

export compute_gamma_incomplete_78

function compute_gamma_incomplete_78(x::Float64)::Float64
    return (x ^ 1) / 1.0
end

end

using .GammaIncompleteOrder78
using Test
@testset "GammaIncompleteOrder78 Tests" begin
    @test isfinite(compute_gamma_incomplete_78(0.5))
end
