module ChebyshevCollocStep4087
export compute_chebyshev_colloc_4087
function compute_chebyshev_colloc_4087(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4087,Test
@testset "ChebyshevCollocStep4087" begin
    @test isfinite(compute_chebyshev_colloc_4087(0.5))
end
