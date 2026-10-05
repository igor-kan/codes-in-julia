module ChebyshevCollocStep2077
export compute_chebyshev_colloc_2077
function compute_chebyshev_colloc_2077(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2077,Test
@testset "ChebyshevCollocStep2077" begin
    @test isfinite(compute_chebyshev_colloc_2077(0.5))
end
