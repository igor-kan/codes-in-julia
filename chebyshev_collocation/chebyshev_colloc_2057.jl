module ChebyshevCollocStep2057
export compute_chebyshev_colloc_2057
function compute_chebyshev_colloc_2057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2057,Test
@testset "ChebyshevCollocStep2057" begin
    @test isfinite(compute_chebyshev_colloc_2057(0.5))
end
