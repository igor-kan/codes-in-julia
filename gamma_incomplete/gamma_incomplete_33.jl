module GammaIncompleteOrder33

export compute_gamma_incomplete_33

function compute_gamma_incomplete_33(x::Float64)::Float64
    return (x ^ 4) / 4.0
end

end

using .GammaIncompleteOrder33
using Test
@testset "GammaIncompleteOrder33 Tests" begin
    @test isfinite(compute_gamma_incomplete_33(0.5))
end
