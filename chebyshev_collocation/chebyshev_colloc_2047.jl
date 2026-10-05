module ChebyshevCollocStep2047
export compute_chebyshev_colloc_2047
function compute_chebyshev_colloc_2047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2047,Test
@testset "ChebyshevCollocStep2047" begin
    @test isfinite(compute_chebyshev_colloc_2047(0.5))
end
