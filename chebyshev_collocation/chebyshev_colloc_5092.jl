module ChebyshevCollocStep5092
export compute_chebyshev_colloc_5092
function compute_chebyshev_colloc_5092(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5092,Test
@testset "ChebyshevCollocStep5092" begin
    @test isfinite(compute_chebyshev_colloc_5092(0.5))
end
