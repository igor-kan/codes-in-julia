module ChebyshevCollocStep2012
export compute_chebyshev_colloc_2012
function compute_chebyshev_colloc_2012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2012,Test
@testset "ChebyshevCollocStep2012" begin
    @test isfinite(compute_chebyshev_colloc_2012(0.5))
end
