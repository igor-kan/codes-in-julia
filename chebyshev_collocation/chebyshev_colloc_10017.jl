module ChebyshevCollocStep10017
export compute_chebyshev_colloc_10017
function compute_chebyshev_colloc_10017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10017,Test
@testset "ChebyshevCollocStep10017" begin
    @test isfinite(compute_chebyshev_colloc_10017(0.5))
end
