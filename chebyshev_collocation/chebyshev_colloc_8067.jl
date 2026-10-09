module ChebyshevCollocStep8067
export compute_chebyshev_colloc_8067
function compute_chebyshev_colloc_8067(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8067,Test
@testset "ChebyshevCollocStep8067" begin
    @test isfinite(compute_chebyshev_colloc_8067(0.5))
end
