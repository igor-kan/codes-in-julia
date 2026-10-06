module ChebyshevCollocStep3067
export compute_chebyshev_colloc_3067
function compute_chebyshev_colloc_3067(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3067,Test
@testset "ChebyshevCollocStep3067" begin
    @test isfinite(compute_chebyshev_colloc_3067(0.5))
end
