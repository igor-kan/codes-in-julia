module ChebyshevCollocStep32

export compute_chebyshev_colloc_32

function compute_chebyshev_colloc_32(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep32
using Test
@testset "ChebyshevCollocStep32 Tests" begin
    @test isfinite(compute_chebyshev_colloc_32(0.5))
end
