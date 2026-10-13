module ChebyshevCollocStep14057
export compute_chebyshev_colloc_14057
function compute_chebyshev_colloc_14057(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep14057,Test
@testset "ChebyshevCollocStep14057" begin
    @test isfinite(compute_chebyshev_colloc_14057(0.5))
end
