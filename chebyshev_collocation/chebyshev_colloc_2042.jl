module ChebyshevCollocStep2042
export compute_chebyshev_colloc_2042
function compute_chebyshev_colloc_2042(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2042,Test
@testset "ChebyshevCollocStep2042" begin
    @test isfinite(compute_chebyshev_colloc_2042(0.5))
end
