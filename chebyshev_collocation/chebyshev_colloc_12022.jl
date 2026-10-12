module ChebyshevCollocStep12022
export compute_chebyshev_colloc_12022
function compute_chebyshev_colloc_12022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep12022,Test
@testset "ChebyshevCollocStep12022" begin
    @test isfinite(compute_chebyshev_colloc_12022(0.5))
end
