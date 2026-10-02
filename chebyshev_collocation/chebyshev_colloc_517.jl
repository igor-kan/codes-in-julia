module ChebyshevCollocStep517

export compute_chebyshev_colloc_517

function compute_chebyshev_colloc_517(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep517
using Test
@testset "ChebyshevCollocStep517 Tests" begin
    @test isfinite(compute_chebyshev_colloc_517(0.5))
end
