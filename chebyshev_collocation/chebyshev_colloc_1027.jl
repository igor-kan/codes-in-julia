module ChebyshevCollocStep1027

export compute_chebyshev_colloc_1027

function compute_chebyshev_colloc_1027(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep1027
using Test
@testset "ChebyshevCollocStep1027 Tests" begin
    @test isfinite(compute_chebyshev_colloc_1027(0.5))
end
