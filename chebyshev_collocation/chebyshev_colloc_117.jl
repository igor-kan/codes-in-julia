module ChebyshevCollocStep117

export compute_chebyshev_colloc_117

function compute_chebyshev_colloc_117(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep117
using Test
@testset "ChebyshevCollocStep117 Tests" begin
    @test isfinite(compute_chebyshev_colloc_117(0.5))
end
