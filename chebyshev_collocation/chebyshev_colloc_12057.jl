module ChebyshevCollocStep12057
export compute_chebyshev_colloc_12057
function compute_chebyshev_colloc_12057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep12057,Test
@testset "ChebyshevCollocStep12057" begin
    @test isfinite(compute_chebyshev_colloc_12057(0.5))
end
