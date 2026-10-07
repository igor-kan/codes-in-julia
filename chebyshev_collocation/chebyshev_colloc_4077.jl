module ChebyshevCollocStep4077
export compute_chebyshev_colloc_4077
function compute_chebyshev_colloc_4077(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4077,Test
@testset "ChebyshevCollocStep4077" begin
    @test isfinite(compute_chebyshev_colloc_4077(0.5))
end
