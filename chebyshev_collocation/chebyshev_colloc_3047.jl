module ChebyshevCollocStep3047
export compute_chebyshev_colloc_3047
function compute_chebyshev_colloc_3047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3047,Test
@testset "ChebyshevCollocStep3047" begin
    @test isfinite(compute_chebyshev_colloc_3047(0.5))
end
