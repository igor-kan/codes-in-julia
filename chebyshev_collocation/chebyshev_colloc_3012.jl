module ChebyshevCollocStep3012
export compute_chebyshev_colloc_3012
function compute_chebyshev_colloc_3012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3012,Test
@testset "ChebyshevCollocStep3012" begin
    @test isfinite(compute_chebyshev_colloc_3012(0.5))
end
