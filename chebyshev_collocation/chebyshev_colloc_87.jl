module ChebyshevCollocStep87

export compute_chebyshev_colloc_87

function compute_chebyshev_colloc_87(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep87
using Test
@testset "ChebyshevCollocStep87 Tests" begin
    @test isfinite(compute_chebyshev_colloc_87(0.5))
end
