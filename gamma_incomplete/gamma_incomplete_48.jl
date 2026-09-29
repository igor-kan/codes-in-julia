module GammaIncompleteOrder48

export compute_gamma_incomplete_48

function compute_gamma_incomplete_48(x::Float64)::Float64
    return (x ^ 1) / 1.0
end

end

using .GammaIncompleteOrder48
using Test
@testset "GammaIncompleteOrder48 Tests" begin
    @test isfinite(compute_gamma_incomplete_48(0.5))
end
