module ChebyshevCollocStep82

export compute_chebyshev_colloc_82

function compute_chebyshev_colloc_82(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep82
using Test
@testset "ChebyshevCollocStep82 Tests" begin
    @test isfinite(compute_chebyshev_colloc_82(0.5))
end
