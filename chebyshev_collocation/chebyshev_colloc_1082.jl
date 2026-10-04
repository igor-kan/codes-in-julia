module ChebyshevCollocStep1082

export compute_chebyshev_colloc_1082

function compute_chebyshev_colloc_1082(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1082
using Test
@testset "ChebyshevCollocStep1082 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1082(0.5))
end
