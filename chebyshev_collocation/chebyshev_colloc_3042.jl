module ChebyshevCollocStep3042
export compute_chebyshev_colloc_3042
function compute_chebyshev_colloc_3042(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3042,Test
@testset "ChebyshevCollocStep3042" begin
    @test isfinite(compute_chebyshev_colloc_3042(0.5))
end
