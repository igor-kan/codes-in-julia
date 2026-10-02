module ChebyshevCollocStep597

export compute_chebyshev_colloc_597

function compute_chebyshev_colloc_597(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep597
using Test
@testset "ChebyshevCollocStep597 Tests" begin
    @test isfinite(compute_chebyshev_colloc_597(0.5))
end
