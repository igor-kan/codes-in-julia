module ChebyshevCollocStep5012
export compute_chebyshev_colloc_5012
function compute_chebyshev_colloc_5012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5012,Test
@testset "ChebyshevCollocStep5012" begin
    @test isfinite(compute_chebyshev_colloc_5012(0.5))
end
