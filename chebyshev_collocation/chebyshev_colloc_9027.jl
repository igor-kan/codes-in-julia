module ChebyshevCollocStep9027
export compute_chebyshev_colloc_9027
function compute_chebyshev_colloc_9027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9027,Test
@testset "ChebyshevCollocStep9027" begin
    @test isfinite(compute_chebyshev_colloc_9027(0.5))
end
