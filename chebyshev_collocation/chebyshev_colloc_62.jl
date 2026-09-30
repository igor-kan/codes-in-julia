module ChebyshevCollocStep62

export compute_chebyshev_colloc_62

function compute_chebyshev_colloc_62(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep62
using Test
@testset "ChebyshevCollocStep62 Tests" begin
    @test isfinite(compute_chebyshev_colloc_62(0.5))
end
