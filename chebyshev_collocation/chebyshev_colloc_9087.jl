module ChebyshevCollocStep9087
export compute_chebyshev_colloc_9087
function compute_chebyshev_colloc_9087(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9087,Test
@testset "ChebyshevCollocStep9087" begin
    @test isfinite(compute_chebyshev_colloc_9087(0.5))
end
