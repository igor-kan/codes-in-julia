module ChebyshevCollocStep14022
export compute_chebyshev_colloc_14022
function compute_chebyshev_colloc_14022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep14022,Test
@testset "ChebyshevCollocStep14022" begin
    @test isfinite(compute_chebyshev_colloc_14022(0.5))
end
