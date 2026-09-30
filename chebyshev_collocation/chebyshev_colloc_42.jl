module ChebyshevCollocStep42

export compute_chebyshev_colloc_42

function compute_chebyshev_colloc_42(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep42
using Test
@testset "ChebyshevCollocStep42 Tests" begin
    @test isfinite(compute_chebyshev_colloc_42(0.5))
end
