module ChebyshevCollocStep1097

export compute_chebyshev_colloc_1097

function compute_chebyshev_colloc_1097(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1097
using Test
@testset "ChebyshevCollocStep1097 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1097(0.5))
end
