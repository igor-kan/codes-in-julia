module ChebyshevCollocStep5082
export compute_chebyshev_colloc_5082
function compute_chebyshev_colloc_5082(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5082,Test
@testset "ChebyshevCollocStep5082" begin
    @test isfinite(compute_chebyshev_colloc_5082(0.5))
end
