module ChebyshevCollocStep3057
export compute_chebyshev_colloc_3057
function compute_chebyshev_colloc_3057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3057,Test
@testset "ChebyshevCollocStep3057" begin
    @test isfinite(compute_chebyshev_colloc_3057(0.5))
end
