module ChebyshevCollocStep17

export compute_chebyshev_colloc_17

function compute_chebyshev_colloc_17(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep17
using Test
@testset "ChebyshevCollocStep17 Tests" begin
    @test isfinite(compute_chebyshev_colloc_17(0.5))
end
