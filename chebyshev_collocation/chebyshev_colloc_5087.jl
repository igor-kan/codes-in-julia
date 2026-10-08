module ChebyshevCollocStep5087
export compute_chebyshev_colloc_5087
function compute_chebyshev_colloc_5087(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5087,Test
@testset "ChebyshevCollocStep5087" begin
    @test isfinite(compute_chebyshev_colloc_5087(0.5))
end
