module ChebyshevCollocStep9077
export compute_chebyshev_colloc_9077
function compute_chebyshev_colloc_9077(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9077,Test
@testset "ChebyshevCollocStep9077" begin
    @test isfinite(compute_chebyshev_colloc_9077(0.5))
end
