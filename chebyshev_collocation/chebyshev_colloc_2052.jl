module ChebyshevCollocStep2052
export compute_chebyshev_colloc_2052
function compute_chebyshev_colloc_2052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2052,Test
@testset "ChebyshevCollocStep2052" begin
    @test isfinite(compute_chebyshev_colloc_2052(0.5))
end
