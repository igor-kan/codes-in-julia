module ChebyshevCollocStep4072
export compute_chebyshev_colloc_4072
function compute_chebyshev_colloc_4072(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4072,Test
@testset "ChebyshevCollocStep4072" begin
    @test isfinite(compute_chebyshev_colloc_4072(0.5))
end
