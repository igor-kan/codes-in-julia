module ChebyshevCollocStep1107

export compute_chebyshev_colloc_1107

function compute_chebyshev_colloc_1107(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1107
using Test
@testset "ChebyshevCollocStep1107 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1107(0.5))
end
