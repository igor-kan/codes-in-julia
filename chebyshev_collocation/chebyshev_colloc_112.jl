module ChebyshevCollocStep112

export compute_chebyshev_colloc_112

function compute_chebyshev_colloc_112(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep112
using Test
@testset "ChebyshevCollocStep112 Tests" begin
    @test isfinite(compute_chebyshev_colloc_112(0.5))
end
