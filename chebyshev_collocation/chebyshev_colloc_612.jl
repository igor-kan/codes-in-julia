module ChebyshevCollocStep612

export compute_chebyshev_colloc_612

function compute_chebyshev_colloc_612(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep612
using Test
@testset "ChebyshevCollocStep612 Tests" begin
    @test isfinite(compute_chebyshev_colloc_612(0.5))
end
