module ChebyshevCollocStep1062

export compute_chebyshev_colloc_1062

function compute_chebyshev_colloc_1062(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep1062
using Test
@testset "ChebyshevCollocStep1062 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1062(0.5))
end
