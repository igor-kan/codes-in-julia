module ChebyshevCollocStep12062
export compute_chebyshev_colloc_12062
function compute_chebyshev_colloc_12062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep12062,Test
@testset "ChebyshevCollocStep12062" begin
    @test isfinite(compute_chebyshev_colloc_12062(0.5))
end
