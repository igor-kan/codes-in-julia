module ChebyshevCollocStep8037
export compute_chebyshev_colloc_8037
function compute_chebyshev_colloc_8037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8037,Test
@testset "ChebyshevCollocStep8037" begin
    @test isfinite(compute_chebyshev_colloc_8037(0.5))
end
