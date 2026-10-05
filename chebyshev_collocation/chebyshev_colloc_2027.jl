module ChebyshevCollocStep2027
export compute_chebyshev_colloc_2027
function compute_chebyshev_colloc_2027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2027,Test
@testset "ChebyshevCollocStep2027" begin
    @test isfinite(compute_chebyshev_colloc_2027(0.5))
end
