module ChebyshevCollocStep5017
export compute_chebyshev_colloc_5017
function compute_chebyshev_colloc_5017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5017,Test
@testset "ChebyshevCollocStep5017" begin
    @test isfinite(compute_chebyshev_colloc_5017(0.5))
end
