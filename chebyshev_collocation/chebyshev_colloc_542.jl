module ChebyshevCollocStep542

export compute_chebyshev_colloc_542

function compute_chebyshev_colloc_542(x::Float64)::Float64
    return cos(pi * 2.0 / 3.0) * x
end

end

using .ChebyshevCollocStep542
using Test
@testset "ChebyshevCollocStep542 Tests" begin
    @test isfinite(compute_chebyshev_colloc_542(0.5))
end
