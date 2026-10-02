module ChebyshevCollocStep507

export compute_chebyshev_colloc_507

function compute_chebyshev_colloc_507(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep507
using Test
@testset "ChebyshevCollocStep507 Tests" begin
    @test isfinite(compute_chebyshev_colloc_507(0.5))
end
