module ChebyshevCollocStep4027
export compute_chebyshev_colloc_4027
function compute_chebyshev_colloc_4027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4027,Test
@testset "ChebyshevCollocStep4027" begin
    @test isfinite(compute_chebyshev_colloc_4027(0.5))
end
