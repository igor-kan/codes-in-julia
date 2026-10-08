module ChebyshevCollocStep5042
export compute_chebyshev_colloc_5042
function compute_chebyshev_colloc_5042(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5042,Test
@testset "ChebyshevCollocStep5042" begin
    @test isfinite(compute_chebyshev_colloc_5042(0.5))
end
