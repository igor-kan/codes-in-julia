module ChebyshevCollocStep8027
export compute_chebyshev_colloc_8027
function compute_chebyshev_colloc_8027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8027,Test
@testset "ChebyshevCollocStep8027" begin
    @test isfinite(compute_chebyshev_colloc_8027(0.5))
end
