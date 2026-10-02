module ChebyshevCollocStep582

export compute_chebyshev_colloc_582

function compute_chebyshev_colloc_582(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep582
using Test
@testset "ChebyshevCollocStep582 Tests" begin
    @test isfinite(compute_chebyshev_colloc_582(0.5))
end
