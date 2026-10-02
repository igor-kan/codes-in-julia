module ChebyshevCollocStep572

export compute_chebyshev_colloc_572

function compute_chebyshev_colloc_572(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep572
using Test
@testset "ChebyshevCollocStep572 Tests" begin
    @test isfinite(compute_chebyshev_colloc_572(0.5))
end
