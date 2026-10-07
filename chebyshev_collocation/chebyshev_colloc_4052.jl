module ChebyshevCollocStep4052
export compute_chebyshev_colloc_4052
function compute_chebyshev_colloc_4052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4052,Test
@testset "ChebyshevCollocStep4052" begin
    @test isfinite(compute_chebyshev_colloc_4052(0.5))
end
