module ChebyshevCollocStep5077
export compute_chebyshev_colloc_5077
function compute_chebyshev_colloc_5077(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5077,Test
@testset "ChebyshevCollocStep5077" begin
    @test isfinite(compute_chebyshev_colloc_5077(0.5))
end
