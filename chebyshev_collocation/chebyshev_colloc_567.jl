module ChebyshevCollocStep567

export compute_chebyshev_colloc_567

function compute_chebyshev_colloc_567(x::Float64)::Float64
    return cos(pi * 7.0 / 8.0) * x
end

end

using .ChebyshevCollocStep567
using Test
@testset "ChebyshevCollocStep567 Tests" begin
    @test isfinite(compute_chebyshev_colloc_567(0.5))
end
