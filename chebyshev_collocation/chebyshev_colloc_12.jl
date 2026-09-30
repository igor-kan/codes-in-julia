module ChebyshevCollocStep12

export compute_chebyshev_colloc_12

function compute_chebyshev_colloc_12(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep12
using Test
@testset "ChebyshevCollocStep12 Tests" begin
    @test isfinite(compute_chebyshev_colloc_12(0.5))
end
