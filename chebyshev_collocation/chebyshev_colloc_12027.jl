module ChebyshevCollocStep12027
export compute_chebyshev_colloc_12027
function compute_chebyshev_colloc_12027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep12027,Test
@testset "ChebyshevCollocStep12027" begin
    @test isfinite(compute_chebyshev_colloc_12027(0.5))
end
