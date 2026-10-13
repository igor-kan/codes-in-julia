module ChebyshevCollocStep14017
export compute_chebyshev_colloc_14017
function compute_chebyshev_colloc_14017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep14017,Test
@testset "ChebyshevCollocStep14017" begin
    @test isfinite(compute_chebyshev_colloc_14017(0.5))
end
