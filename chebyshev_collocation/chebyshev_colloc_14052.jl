module ChebyshevCollocStep14052
export compute_chebyshev_colloc_14052
function compute_chebyshev_colloc_14052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep14052,Test
@testset "ChebyshevCollocStep14052" begin
    @test isfinite(compute_chebyshev_colloc_14052(0.5))
end
