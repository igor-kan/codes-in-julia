module ChebyshevCollocStep5057
export compute_chebyshev_colloc_5057
function compute_chebyshev_colloc_5057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5057,Test
@testset "ChebyshevCollocStep5057" begin
    @test isfinite(compute_chebyshev_colloc_5057(0.5))
end
