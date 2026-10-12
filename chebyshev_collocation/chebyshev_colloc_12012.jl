module ChebyshevCollocStep12012
export compute_chebyshev_colloc_12012
function compute_chebyshev_colloc_12012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep12012,Test
@testset "ChebyshevCollocStep12012" begin
    @test isfinite(compute_chebyshev_colloc_12012(0.5))
end
