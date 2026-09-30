module ChebyshevCollocStep127

export compute_chebyshev_colloc_127

function compute_chebyshev_colloc_127(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep127
using Test
@testset "ChebyshevCollocStep127 Tests" begin
    @test isfinite(compute_chebyshev_colloc_127(0.5))
end
