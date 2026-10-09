module ChebyshevCollocStep8022
export compute_chebyshev_colloc_8022
function compute_chebyshev_colloc_8022(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8022,Test
@testset "ChebyshevCollocStep8022" begin
    @test isfinite(compute_chebyshev_colloc_8022(0.5))
end
