module ChebyshevCollocStep1012

export compute_chebyshev_colloc_1012

function compute_chebyshev_colloc_1012(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1012
using Test
@testset "ChebyshevCollocStep1012 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1012(0.5))
end
