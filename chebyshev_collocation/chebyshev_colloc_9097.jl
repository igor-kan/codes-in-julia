module ChebyshevCollocStep9097
export compute_chebyshev_colloc_9097
function compute_chebyshev_colloc_9097(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9097,Test
@testset "ChebyshevCollocStep9097" begin
    @test isfinite(compute_chebyshev_colloc_9097(0.5))
end
