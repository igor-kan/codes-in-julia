module ChebyshevCollocStep3062
export compute_chebyshev_colloc_3062
function compute_chebyshev_colloc_3062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3062,Test
@testset "ChebyshevCollocStep3062" begin
    @test isfinite(compute_chebyshev_colloc_3062(0.5))
end
