module ChebyshevCollocStep1057

export compute_chebyshev_colloc_1057

function compute_chebyshev_colloc_1057(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1057
using Test
@testset "ChebyshevCollocStep1057 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1057(0.5))
end
