module ChebyshevCollocStep5027
export compute_chebyshev_colloc_5027
function compute_chebyshev_colloc_5027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5027,Test
@testset "ChebyshevCollocStep5027" begin
    @test isfinite(compute_chebyshev_colloc_5027(0.5))
end
