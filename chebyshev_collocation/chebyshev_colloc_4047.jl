module ChebyshevCollocStep4047
export compute_chebyshev_colloc_4047
function compute_chebyshev_colloc_4047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4047,Test
@testset "ChebyshevCollocStep4047" begin
    @test isfinite(compute_chebyshev_colloc_4047(0.5))
end
