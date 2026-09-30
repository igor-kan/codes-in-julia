module ChebyshevCollocStep102

export compute_chebyshev_colloc_102

function compute_chebyshev_colloc_102(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep102
using Test
@testset "ChebyshevCollocStep102 Tests" begin
    @test isfinite(compute_chebyshev_colloc_102(0.5))
end
