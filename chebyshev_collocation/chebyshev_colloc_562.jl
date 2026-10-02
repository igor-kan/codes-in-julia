module ChebyshevCollocStep562

export compute_chebyshev_colloc_562

function compute_chebyshev_colloc_562(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep562
using Test
@testset "ChebyshevCollocStep562 Tests" begin
    @test isfinite(compute_chebyshev_colloc_562(0.5))
end
