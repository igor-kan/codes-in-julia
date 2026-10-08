module ChebyshevCollocStep5037
export compute_chebyshev_colloc_5037
function compute_chebyshev_colloc_5037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5037,Test
@testset "ChebyshevCollocStep5037" begin
    @test isfinite(compute_chebyshev_colloc_5037(0.5))
end
