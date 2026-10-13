module ChebyshevCollocStep14047
export compute_chebyshev_colloc_14047
function compute_chebyshev_colloc_14047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep14047,Test
@testset "ChebyshevCollocStep14047" begin
    @test isfinite(compute_chebyshev_colloc_14047(0.5))
end
