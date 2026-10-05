module ChebyshevCollocStep2037
export compute_chebyshev_colloc_2037
function compute_chebyshev_colloc_2037(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2037,Test
@testset "ChebyshevCollocStep2037" begin
    @test isfinite(compute_chebyshev_colloc_2037(0.5))
end
