module ChebyshevCollocStep1092

export compute_chebyshev_colloc_1092

function compute_chebyshev_colloc_1092(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1092
using Test
@testset "ChebyshevCollocStep1092 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1092(0.5))
end
