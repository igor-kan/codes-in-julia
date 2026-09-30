module ChebyshevCollocStep7

export compute_chebyshev_colloc_7

function compute_chebyshev_colloc_7(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep7
using Test
@testset "ChebyshevCollocStep7 Tests" begin
    @test isfinite(compute_chebyshev_colloc_7(0.5))
end
