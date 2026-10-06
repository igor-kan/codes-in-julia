module ChebyshevCollocStep3087
export compute_chebyshev_colloc_3087
function compute_chebyshev_colloc_3087(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3087,Test
@testset "ChebyshevCollocStep3087" begin
    @test isfinite(compute_chebyshev_colloc_3087(0.5))
end
