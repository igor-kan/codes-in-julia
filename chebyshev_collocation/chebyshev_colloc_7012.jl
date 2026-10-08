module ChebyshevCollocStep7012
export compute_chebyshev_colloc_7012
function compute_chebyshev_colloc_7012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep7012,Test
@testset "ChebyshevCollocStep7012" begin
    @test isfinite(compute_chebyshev_colloc_7012(0.5))
end
