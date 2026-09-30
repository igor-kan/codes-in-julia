module ChebyshevCollocStep97

export compute_chebyshev_colloc_97

function compute_chebyshev_colloc_97(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep97
using Test
@testset "ChebyshevCollocStep97 Tests" begin
    @test isfinite(compute_chebyshev_colloc_97(0.5))
end
