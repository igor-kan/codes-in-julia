module ChebyshevCollocStep3077
export compute_chebyshev_colloc_3077
function compute_chebyshev_colloc_3077(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3077,Test
@testset "ChebyshevCollocStep3077" begin
    @test isfinite(compute_chebyshev_colloc_3077(0.5))
end
