module ChebyshevCollocStep10047
export compute_chebyshev_colloc_10047
function compute_chebyshev_colloc_10047(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10047,Test
@testset "ChebyshevCollocStep10047" begin
    @test isfinite(compute_chebyshev_colloc_10047(0.5))
end
