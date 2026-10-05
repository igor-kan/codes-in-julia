module ChebyshevCollocStep2107
export compute_chebyshev_colloc_2107
function compute_chebyshev_colloc_2107(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2107,Test
@testset "ChebyshevCollocStep2107" begin
    @test isfinite(compute_chebyshev_colloc_2107(0.5))
end
