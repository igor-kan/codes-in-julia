module ChebyshevCollocStep9067
export compute_chebyshev_colloc_9067
function compute_chebyshev_colloc_9067(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9067,Test
@testset "ChebyshevCollocStep9067" begin
    @test isfinite(compute_chebyshev_colloc_9067(0.5))
end
