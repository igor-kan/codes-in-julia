module ChebyshevCollocStep9012
export compute_chebyshev_colloc_9012
function compute_chebyshev_colloc_9012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9012,Test
@testset "ChebyshevCollocStep9012" begin
    @test isfinite(compute_chebyshev_colloc_9012(0.5))
end
