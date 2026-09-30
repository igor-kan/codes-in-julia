module ChebyshevCollocStep92

export compute_chebyshev_colloc_92

function compute_chebyshev_colloc_92(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep92
using Test
@testset "ChebyshevCollocStep92 Tests" begin
    @test isfinite(compute_chebyshev_colloc_92(0.5))
end
