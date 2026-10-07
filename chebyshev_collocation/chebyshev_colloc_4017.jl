module ChebyshevCollocStep4017
export compute_chebyshev_colloc_4017
function compute_chebyshev_colloc_4017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4017,Test
@testset "ChebyshevCollocStep4017" begin
    @test isfinite(compute_chebyshev_colloc_4017(0.5))
end
