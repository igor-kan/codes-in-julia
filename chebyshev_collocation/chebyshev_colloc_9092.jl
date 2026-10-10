module ChebyshevCollocStep9092
export compute_chebyshev_colloc_9092
function compute_chebyshev_colloc_9092(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9092,Test
@testset "ChebyshevCollocStep9092" begin
    @test isfinite(compute_chebyshev_colloc_9092(0.5))
end
