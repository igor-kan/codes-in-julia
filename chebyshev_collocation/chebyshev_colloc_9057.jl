module ChebyshevCollocStep9057
export compute_chebyshev_colloc_9057
function compute_chebyshev_colloc_9057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9057,Test
@testset "ChebyshevCollocStep9057" begin
    @test isfinite(compute_chebyshev_colloc_9057(0.5))
end
