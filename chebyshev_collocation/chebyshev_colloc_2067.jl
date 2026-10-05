module ChebyshevCollocStep2067
export compute_chebyshev_colloc_2067
function compute_chebyshev_colloc_2067(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2067,Test
@testset "ChebyshevCollocStep2067" begin
    @test isfinite(compute_chebyshev_colloc_2067(0.5))
end
