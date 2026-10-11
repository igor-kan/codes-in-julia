module ChebyshevCollocStep10067
export compute_chebyshev_colloc_10067
function compute_chebyshev_colloc_10067(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10067,Test
@testset "ChebyshevCollocStep10067" begin
    @test isfinite(compute_chebyshev_colloc_10067(0.5))
end
