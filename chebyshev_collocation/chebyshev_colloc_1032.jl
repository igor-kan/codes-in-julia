module ChebyshevCollocStep1032

export compute_chebyshev_colloc_1032

function compute_chebyshev_colloc_1032(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1032
using Test
@testset "ChebyshevCollocStep1032 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1032(0.5))
end
