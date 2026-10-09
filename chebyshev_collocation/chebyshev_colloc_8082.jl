module ChebyshevCollocStep8082
export compute_chebyshev_colloc_8082
function compute_chebyshev_colloc_8082(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8082,Test
@testset "ChebyshevCollocStep8082" begin
    @test isfinite(compute_chebyshev_colloc_8082(0.5))
end
