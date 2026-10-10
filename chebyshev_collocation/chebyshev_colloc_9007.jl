module ChebyshevCollocStep9007
export compute_chebyshev_colloc_9007
function compute_chebyshev_colloc_9007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep9007,Test
@testset "ChebyshevCollocStep9007" begin
    @test isfinite(compute_chebyshev_colloc_9007(0.5))
end
