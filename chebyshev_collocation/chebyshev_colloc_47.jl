module ChebyshevCollocStep47

export compute_chebyshev_colloc_47

function compute_chebyshev_colloc_47(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep47
using Test
@testset "ChebyshevCollocStep47 Tests" begin
    @test isfinite(compute_chebyshev_colloc_47(0.5))
end
