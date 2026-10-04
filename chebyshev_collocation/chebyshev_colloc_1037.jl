module ChebyshevCollocStep1037

export compute_chebyshev_colloc_1037

function compute_chebyshev_colloc_1037(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1037
using Test
@testset "ChebyshevCollocStep1037 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1037(0.5))
end
