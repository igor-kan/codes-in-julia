module ChebyshevCollocStep602

export compute_chebyshev_colloc_602

function compute_chebyshev_colloc_602(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep602
using Test
@testset "ChebyshevCollocStep602 Tests" begin
    @test isfinite(compute_chebyshev_colloc_602(0.5))
end
