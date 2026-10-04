module ChebyshevCollocStep1017

export compute_chebyshev_colloc_1017

function compute_chebyshev_colloc_1017(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1017
using Test
@testset "ChebyshevCollocStep1017 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1017(0.5))
end
