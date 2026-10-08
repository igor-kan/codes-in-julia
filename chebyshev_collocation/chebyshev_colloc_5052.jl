module ChebyshevCollocStep5052
export compute_chebyshev_colloc_5052
function compute_chebyshev_colloc_5052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5052,Test
@testset "ChebyshevCollocStep5052" begin
    @test isfinite(compute_chebyshev_colloc_5052(0.5))
end
