module ChebyshevCollocStep5047
export compute_chebyshev_colloc_5047
function compute_chebyshev_colloc_5047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5047,Test
@testset "ChebyshevCollocStep5047" begin
    @test isfinite(compute_chebyshev_colloc_5047(0.5))
end
