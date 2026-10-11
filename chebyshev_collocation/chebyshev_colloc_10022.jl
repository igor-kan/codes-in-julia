module ChebyshevCollocStep10022
export compute_chebyshev_colloc_10022
function compute_chebyshev_colloc_10022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10022,Test
@testset "ChebyshevCollocStep10022" begin
    @test isfinite(compute_chebyshev_colloc_10022(0.5))
end
