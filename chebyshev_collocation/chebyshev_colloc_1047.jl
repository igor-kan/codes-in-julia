module ChebyshevCollocStep1047

export compute_chebyshev_colloc_1047

function compute_chebyshev_colloc_1047(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1047
using Test
@testset "ChebyshevCollocStep1047 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1047(0.5))
end
