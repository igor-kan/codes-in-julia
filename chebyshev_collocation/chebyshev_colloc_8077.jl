module ChebyshevCollocStep8077
export compute_chebyshev_colloc_8077
function compute_chebyshev_colloc_8077(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8077,Test
@testset "ChebyshevCollocStep8077" begin
    @test isfinite(compute_chebyshev_colloc_8077(0.5))
end
