module ChebyshevCollocStep9022
export compute_chebyshev_colloc_9022
function compute_chebyshev_colloc_9022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9022,Test
@testset "ChebyshevCollocStep9022" begin
    @test isfinite(compute_chebyshev_colloc_9022(0.5))
end
