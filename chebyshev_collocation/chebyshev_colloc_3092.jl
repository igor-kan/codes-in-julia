module ChebyshevCollocStep3092
export compute_chebyshev_colloc_3092
function compute_chebyshev_colloc_3092(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3092,Test
@testset "ChebyshevCollocStep3092" begin
    @test isfinite(compute_chebyshev_colloc_3092(0.5))
end
