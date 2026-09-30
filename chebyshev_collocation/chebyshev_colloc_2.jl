module ChebyshevCollocStep2

export compute_chebyshev_colloc_2

function compute_chebyshev_colloc_2(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep2
using Test
@testset "ChebyshevCollocStep2 Tests" begin
    @test isfinite(compute_chebyshev_colloc_2(0.5))
end
