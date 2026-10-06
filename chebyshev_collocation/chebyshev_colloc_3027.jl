module ChebyshevCollocStep3027
export compute_chebyshev_colloc_3027
function compute_chebyshev_colloc_3027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep3027,Test
@testset "ChebyshevCollocStep3027" begin
    @test isfinite(compute_chebyshev_colloc_3027(0.5))
end
