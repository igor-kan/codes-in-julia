module ChebyshevCollocStep3037
export compute_chebyshev_colloc_3037
function compute_chebyshev_colloc_3037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3037,Test
@testset "ChebyshevCollocStep3037" begin
    @test isfinite(compute_chebyshev_colloc_3037(0.5))
end
