module ChebyshevCollocStep8042
export compute_chebyshev_colloc_8042
function compute_chebyshev_colloc_8042(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8042,Test
@testset "ChebyshevCollocStep8042" begin
    @test isfinite(compute_chebyshev_colloc_8042(0.5))
end
