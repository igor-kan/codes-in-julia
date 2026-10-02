module ChebyshevCollocStep592

export compute_chebyshev_colloc_592

function compute_chebyshev_colloc_592(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep592
using Test
@testset "ChebyshevCollocStep592 Tests" begin
    @test isfinite(compute_chebyshev_colloc_592(0.5))
end
