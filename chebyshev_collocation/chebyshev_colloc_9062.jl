module ChebyshevCollocStep9062
export compute_chebyshev_colloc_9062
function compute_chebyshev_colloc_9062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9062,Test
@testset "ChebyshevCollocStep9062" begin
    @test isfinite(compute_chebyshev_colloc_9062(0.5))
end
