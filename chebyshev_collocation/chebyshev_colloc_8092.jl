module ChebyshevCollocStep8092
export compute_chebyshev_colloc_8092
function compute_chebyshev_colloc_8092(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8092,Test
@testset "ChebyshevCollocStep8092" begin
    @test isfinite(compute_chebyshev_colloc_8092(0.5))
end
