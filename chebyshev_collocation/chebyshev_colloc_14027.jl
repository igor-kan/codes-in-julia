module ChebyshevCollocStep14027
export compute_chebyshev_colloc_14027
function compute_chebyshev_colloc_14027(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep14027,Test
@testset "ChebyshevCollocStep14027" begin
    @test isfinite(compute_chebyshev_colloc_14027(0.5))
end
