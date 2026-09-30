module ChebyshevCollocStep107

export compute_chebyshev_colloc_107

function compute_chebyshev_colloc_107(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep107
using Test
@testset "ChebyshevCollocStep107 Tests" begin
    @test isfinite(compute_chebyshev_colloc_107(0.5))
end
