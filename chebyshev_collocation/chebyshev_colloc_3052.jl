module ChebyshevCollocStep3052
export compute_chebyshev_colloc_3052
function compute_chebyshev_colloc_3052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3052,Test
@testset "ChebyshevCollocStep3052" begin
    @test isfinite(compute_chebyshev_colloc_3052(0.5))
end
