module ChebyshevCollocStep2062
export compute_chebyshev_colloc_2062
function compute_chebyshev_colloc_2062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2062,Test
@testset "ChebyshevCollocStep2062" begin
    @test isfinite(compute_chebyshev_colloc_2062(0.5))
end
