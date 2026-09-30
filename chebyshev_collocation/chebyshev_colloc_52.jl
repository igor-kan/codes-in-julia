module ChebyshevCollocStep52

export compute_chebyshev_colloc_52

function compute_chebyshev_colloc_52(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep52
using Test
@testset "ChebyshevCollocStep52 Tests" begin
    @test isfinite(compute_chebyshev_colloc_52(0.5))
end
