module ChebyshevCollocStep57

export compute_chebyshev_colloc_57

function compute_chebyshev_colloc_57(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep57
using Test
@testset "ChebyshevCollocStep57 Tests" begin
    @test isfinite(compute_chebyshev_colloc_57(0.5))
end
