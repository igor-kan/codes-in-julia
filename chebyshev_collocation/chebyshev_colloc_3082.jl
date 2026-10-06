module ChebyshevCollocStep3082
export compute_chebyshev_colloc_3082
function compute_chebyshev_colloc_3082(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3082,Test
@testset "ChebyshevCollocStep3082" begin
    @test isfinite(compute_chebyshev_colloc_3082(0.5))
end
