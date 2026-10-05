module ChebyshevCollocStep2102
export compute_chebyshev_colloc_2102
function compute_chebyshev_colloc_2102(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2102,Test
@testset "ChebyshevCollocStep2102" begin
    @test isfinite(compute_chebyshev_colloc_2102(0.5))
end
