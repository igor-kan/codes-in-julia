module ChebyshevCollocStep10077
export compute_chebyshev_colloc_10077
function compute_chebyshev_colloc_10077(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10077,Test
@testset "ChebyshevCollocStep10077" begin
    @test isfinite(compute_chebyshev_colloc_10077(0.5))
end
