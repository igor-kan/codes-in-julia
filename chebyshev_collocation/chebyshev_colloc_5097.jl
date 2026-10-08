module ChebyshevCollocStep5097
export compute_chebyshev_colloc_5097
function compute_chebyshev_colloc_5097(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5097,Test
@testset "ChebyshevCollocStep5097" begin
    @test isfinite(compute_chebyshev_colloc_5097(0.5))
end
