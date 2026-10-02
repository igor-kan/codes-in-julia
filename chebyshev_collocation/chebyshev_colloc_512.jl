module ChebyshevCollocStep512

export compute_chebyshev_colloc_512

function compute_chebyshev_colloc_512(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep512
using Test
@testset "ChebyshevCollocStep512 Tests" begin
    @test isfinite(compute_chebyshev_colloc_512(0.5))
end
