module ChebyshevCollocStep2087
export compute_chebyshev_colloc_2087
function compute_chebyshev_colloc_2087(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2087,Test
@testset "ChebyshevCollocStep2087" begin
    @test isfinite(compute_chebyshev_colloc_2087(0.5))
end
