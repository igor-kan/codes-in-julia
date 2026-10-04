module ChebyshevCollocStep1042

export compute_chebyshev_colloc_1042

function compute_chebyshev_colloc_1042(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1042
using Test
@testset "ChebyshevCollocStep1042 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1042(0.5))
end
