module ChebyshevCollocStep552

export compute_chebyshev_colloc_552

function compute_chebyshev_colloc_552(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep552
using Test
@testset "ChebyshevCollocStep552 Tests" begin
    @test isfinite(compute_chebyshev_colloc_552(0.5))
end
