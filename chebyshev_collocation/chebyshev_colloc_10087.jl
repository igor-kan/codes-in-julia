module ChebyshevCollocStep10087
export compute_chebyshev_colloc_10087
function compute_chebyshev_colloc_10087(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10087,Test
@testset "ChebyshevCollocStep10087" begin
    @test isfinite(compute_chebyshev_colloc_10087(0.5))
end
