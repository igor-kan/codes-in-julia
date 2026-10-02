module ChebyshevCollocStep587

export compute_chebyshev_colloc_587

function compute_chebyshev_colloc_587(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep587
using Test
@testset "ChebyshevCollocStep587 Tests" begin
    @test isfinite(compute_chebyshev_colloc_587(0.5))
end
