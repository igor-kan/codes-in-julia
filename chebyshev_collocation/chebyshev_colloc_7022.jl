module ChebyshevCollocStep7022
export compute_chebyshev_colloc_7022
function compute_chebyshev_colloc_7022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep7022,Test
@testset "ChebyshevCollocStep7022" begin
    @test isfinite(compute_chebyshev_colloc_7022(0.5))
end
