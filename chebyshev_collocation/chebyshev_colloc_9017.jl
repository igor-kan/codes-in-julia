module ChebyshevCollocStep9017
export compute_chebyshev_colloc_9017
function compute_chebyshev_colloc_9017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9017,Test
@testset "ChebyshevCollocStep9017" begin
    @test isfinite(compute_chebyshev_colloc_9017(0.5))
end
