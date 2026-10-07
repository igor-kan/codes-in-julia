module ChebyshevCollocStep4022
export compute_chebyshev_colloc_4022
function compute_chebyshev_colloc_4022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4022,Test
@testset "ChebyshevCollocStep4022" begin
    @test isfinite(compute_chebyshev_colloc_4022(0.5))
end
