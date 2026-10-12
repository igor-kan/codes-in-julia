module ChebyshevCollocStep12052
export compute_chebyshev_colloc_12052
function compute_chebyshev_colloc_12052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep12052,Test
@testset "ChebyshevCollocStep12052" begin
    @test isfinite(compute_chebyshev_colloc_12052(0.5))
end
