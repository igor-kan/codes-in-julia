module ChebyshevCollocStep5067
export compute_chebyshev_colloc_5067
function compute_chebyshev_colloc_5067(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5067,Test
@testset "ChebyshevCollocStep5067" begin
    @test isfinite(compute_chebyshev_colloc_5067(0.5))
end
