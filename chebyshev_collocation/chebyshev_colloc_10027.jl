module ChebyshevCollocStep10027
export compute_chebyshev_colloc_10027
function compute_chebyshev_colloc_10027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep10027,Test
@testset "ChebyshevCollocStep10027" begin
    @test isfinite(compute_chebyshev_colloc_10027(0.5))
end
