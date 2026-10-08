module ChebyshevCollocStep5022
export compute_chebyshev_colloc_5022
function compute_chebyshev_colloc_5022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5022,Test
@testset "ChebyshevCollocStep5022" begin
    @test isfinite(compute_chebyshev_colloc_5022(0.5))
end
