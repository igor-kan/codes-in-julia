module ChebyshevCollocStep7017
export compute_chebyshev_colloc_7017
function compute_chebyshev_colloc_7017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep7017,Test
@testset "ChebyshevCollocStep7017" begin
    @test isfinite(compute_chebyshev_colloc_7017(0.5))
end
