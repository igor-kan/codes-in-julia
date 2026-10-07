module ChebyshevCollocStep4082
export compute_chebyshev_colloc_4082
function compute_chebyshev_colloc_4082(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4082,Test
@testset "ChebyshevCollocStep4082" begin
    @test isfinite(compute_chebyshev_colloc_4082(0.5))
end
