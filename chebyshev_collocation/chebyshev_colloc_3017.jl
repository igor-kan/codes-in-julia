module ChebyshevCollocStep3017
export compute_chebyshev_colloc_3017
function compute_chebyshev_colloc_3017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3017,Test
@testset "ChebyshevCollocStep3017" begin
    @test isfinite(compute_chebyshev_colloc_3017(0.5))
end
