module ChebyshevCollocStep10057
export compute_chebyshev_colloc_10057
function compute_chebyshev_colloc_10057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10057,Test
@testset "ChebyshevCollocStep10057" begin
    @test isfinite(compute_chebyshev_colloc_10057(0.5))
end
