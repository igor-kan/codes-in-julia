module ChebyshevCollocStep1067

export compute_chebyshev_colloc_1067

function compute_chebyshev_colloc_1067(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1067
using Test
@testset "ChebyshevCollocStep1067 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1067(0.5))
end
