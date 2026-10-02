module ChebyshevCollocStep617

export compute_chebyshev_colloc_617

function compute_chebyshev_colloc_617(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep617
using Test
@testset "ChebyshevCollocStep617 Tests" begin
    @test isfinite(compute_chebyshev_colloc_617(0.5))
end
