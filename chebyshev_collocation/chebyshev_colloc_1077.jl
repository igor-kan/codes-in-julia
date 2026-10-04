module ChebyshevCollocStep1077

export compute_chebyshev_colloc_1077

function compute_chebyshev_colloc_1077(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1077
using Test
@testset "ChebyshevCollocStep1077 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1077(0.5))
end
