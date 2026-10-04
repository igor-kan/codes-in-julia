module ChebyshevCollocStep1022

export compute_chebyshev_colloc_1022

function compute_chebyshev_colloc_1022(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1022
using Test
@testset "ChebyshevCollocStep1022 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1022(0.5))
end
