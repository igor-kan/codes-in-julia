module ChebyshevCollocStep8047
export compute_chebyshev_colloc_8047
function compute_chebyshev_colloc_8047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8047,Test
@testset "ChebyshevCollocStep8047" begin
    @test isfinite(compute_chebyshev_colloc_8047(0.5))
end
