module ChebyshevCollocStep4067
export compute_chebyshev_colloc_4067
function compute_chebyshev_colloc_4067(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4067,Test
@testset "ChebyshevCollocStep4067" begin
    @test isfinite(compute_chebyshev_colloc_4067(0.5))
end
