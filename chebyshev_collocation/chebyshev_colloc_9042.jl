module ChebyshevCollocStep9042
export compute_chebyshev_colloc_9042
function compute_chebyshev_colloc_9042(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9042,Test
@testset "ChebyshevCollocStep9042" begin
    @test isfinite(compute_chebyshev_colloc_9042(0.5))
end
