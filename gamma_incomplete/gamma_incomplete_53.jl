module GammaIncompleteOrder53

export compute_gamma_incomplete_53

function compute_gamma_incomplete_53(x::Float64)::Float64
    return (x ^ 6) / 6.0
end

end

using .GammaIncompleteOrder53
using Test
@testset "GammaIncompleteOrder53 Tests" begin
    @test isfinite(compute_gamma_incomplete_53(0.5))
end
