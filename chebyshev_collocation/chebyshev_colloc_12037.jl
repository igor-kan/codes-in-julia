module ChebyshevCollocStep12037
export compute_chebyshev_colloc_12037
function compute_chebyshev_colloc_12037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep12037,Test
@testset "ChebyshevCollocStep12037" begin
    @test isfinite(compute_chebyshev_colloc_12037(0.5))
end
