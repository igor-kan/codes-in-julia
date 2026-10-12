module ChebyshevCollocStep12017
export compute_chebyshev_colloc_12017
function compute_chebyshev_colloc_12017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep12017,Test
@testset "ChebyshevCollocStep12017" begin
    @test isfinite(compute_chebyshev_colloc_12017(0.5))
end
