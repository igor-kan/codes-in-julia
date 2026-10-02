module ChebyshevCollocStep502

export compute_chebyshev_colloc_502

function compute_chebyshev_colloc_502(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep502
using Test
@testset "ChebyshevCollocStep502 Tests" begin
    @test isfinite(compute_chebyshev_colloc_502(0.5))
end
