module ChebyshevCollocStep14037
export compute_chebyshev_colloc_14037
function compute_chebyshev_colloc_14037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep14037,Test
@testset "ChebyshevCollocStep14037" begin
    @test isfinite(compute_chebyshev_colloc_14037(0.5))
end
