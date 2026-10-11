module ChebyshevCollocStep10037
export compute_chebyshev_colloc_10037
function compute_chebyshev_colloc_10037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10037,Test
@testset "ChebyshevCollocStep10037" begin
    @test isfinite(compute_chebyshev_colloc_10037(0.5))
end
