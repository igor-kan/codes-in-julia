module ChebyshevCollocStep10042
export compute_chebyshev_colloc_10042
function compute_chebyshev_colloc_10042(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10042,Test
@testset "ChebyshevCollocStep10042" begin
    @test isfinite(compute_chebyshev_colloc_10042(0.5))
end
