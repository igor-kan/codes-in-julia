module ChebyshevCollocStep1007

export compute_chebyshev_colloc_1007

function compute_chebyshev_colloc_1007(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1007
using Test
@testset "ChebyshevCollocStep1007 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1007(0.5))
end
