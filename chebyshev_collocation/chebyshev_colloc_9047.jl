module ChebyshevCollocStep9047
export compute_chebyshev_colloc_9047
function compute_chebyshev_colloc_9047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9047,Test
@testset "ChebyshevCollocStep9047" begin
    @test isfinite(compute_chebyshev_colloc_9047(0.5))
end
