module ChebyshevCollocStep1052

export compute_chebyshev_colloc_1052

function compute_chebyshev_colloc_1052(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1052
using Test
@testset "ChebyshevCollocStep1052 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1052(0.5))
end
