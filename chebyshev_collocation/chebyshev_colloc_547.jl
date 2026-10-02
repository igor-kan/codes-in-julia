module ChebyshevCollocStep547

export compute_chebyshev_colloc_547

function compute_chebyshev_colloc_547(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep547
using Test
@testset "ChebyshevCollocStep547 Tests" begin
    @test isfinite(compute_chebyshev_colloc_547(0.5))
end
