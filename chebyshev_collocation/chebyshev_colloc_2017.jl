module ChebyshevCollocStep2017
export compute_chebyshev_colloc_2017
function compute_chebyshev_colloc_2017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2017,Test
@testset "ChebyshevCollocStep2017" begin
    @test isfinite(compute_chebyshev_colloc_2017(0.5))
end
