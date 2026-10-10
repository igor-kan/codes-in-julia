module ChebyshevCollocStep9037
export compute_chebyshev_colloc_9037
function compute_chebyshev_colloc_9037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9037,Test
@testset "ChebyshevCollocStep9037" begin
    @test isfinite(compute_chebyshev_colloc_9037(0.5))
end
