module ChebyshevCollocStep2092
export compute_chebyshev_colloc_2092
function compute_chebyshev_colloc_2092(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2092,Test
@testset "ChebyshevCollocStep2092" begin
    @test isfinite(compute_chebyshev_colloc_2092(0.5))
end
