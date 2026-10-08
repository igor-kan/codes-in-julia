module ChebyshevCollocStep5062
export compute_chebyshev_colloc_5062
function compute_chebyshev_colloc_5062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5062,Test
@testset "ChebyshevCollocStep5062" begin
    @test isfinite(compute_chebyshev_colloc_5062(0.5))
end
