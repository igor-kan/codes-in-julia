module ChebyshevCollocStep122

export compute_chebyshev_colloc_122

function compute_chebyshev_colloc_122(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep122
using Test
@testset "ChebyshevCollocStep122 Tests" begin
    @test isfinite(compute_chebyshev_colloc_122(0.5))
end
