module ChebyshevCollocStep10052
export compute_chebyshev_colloc_10052
function compute_chebyshev_colloc_10052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10052,Test
@testset "ChebyshevCollocStep10052" begin
    @test isfinite(compute_chebyshev_colloc_10052(0.5))
end
