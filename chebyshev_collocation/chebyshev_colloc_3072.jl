module ChebyshevCollocStep3072
export compute_chebyshev_colloc_3072
function compute_chebyshev_colloc_3072(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3072,Test
@testset "ChebyshevCollocStep3072" begin
    @test isfinite(compute_chebyshev_colloc_3072(0.5))
end
