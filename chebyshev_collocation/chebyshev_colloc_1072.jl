module ChebyshevCollocStep1072

export compute_chebyshev_colloc_1072

function compute_chebyshev_colloc_1072(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1072
using Test
@testset "ChebyshevCollocStep1072 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1072(0.5))
end
