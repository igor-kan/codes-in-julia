module ChebyshevCollocStep1102

export compute_chebyshev_colloc_1102

function compute_chebyshev_colloc_1102(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1102
using Test
@testset "ChebyshevCollocStep1102 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1102(0.5))
end
