module ChebyshevCollocStep77

export compute_chebyshev_colloc_77

function compute_chebyshev_colloc_77(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep77
using Test
@testset "ChebyshevCollocStep77 Tests" begin
    @test isfinite(compute_chebyshev_colloc_77(0.5))
end
