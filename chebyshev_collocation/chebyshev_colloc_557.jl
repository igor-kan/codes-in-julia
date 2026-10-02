module ChebyshevCollocStep557

export compute_chebyshev_colloc_557

function compute_chebyshev_colloc_557(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep557
using Test
@testset "ChebyshevCollocStep557 Tests" begin
    @test isfinite(compute_chebyshev_colloc_557(0.5))
end
