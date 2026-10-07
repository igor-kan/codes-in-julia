module ChebyshevCollocStep4057
export compute_chebyshev_colloc_4057
function compute_chebyshev_colloc_4057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4057,Test
@testset "ChebyshevCollocStep4057" begin
    @test isfinite(compute_chebyshev_colloc_4057(0.5))
end
