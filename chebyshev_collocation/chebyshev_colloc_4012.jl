module ChebyshevCollocStep4012
export compute_chebyshev_colloc_4012
function compute_chebyshev_colloc_4012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4012,Test
@testset "ChebyshevCollocStep4012" begin
    @test isfinite(compute_chebyshev_colloc_4012(0.5))
end
