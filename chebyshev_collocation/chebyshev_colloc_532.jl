module ChebyshevCollocStep532

export compute_chebyshev_colloc_532

function compute_chebyshev_colloc_532(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep532
using Test
@testset "ChebyshevCollocStep532 Tests" begin
    @test isfinite(compute_chebyshev_colloc_532(0.5))
end
