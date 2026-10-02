module ChebyshevCollocStep537

export compute_chebyshev_colloc_537

function compute_chebyshev_colloc_537(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep537
using Test
@testset "ChebyshevCollocStep537 Tests" begin
    @test isfinite(compute_chebyshev_colloc_537(0.5))
end
