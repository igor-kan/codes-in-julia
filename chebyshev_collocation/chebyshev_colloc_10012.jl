module ChebyshevCollocStep10012
export compute_chebyshev_colloc_10012
function compute_chebyshev_colloc_10012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10012,Test
@testset "ChebyshevCollocStep10012" begin
    @test isfinite(compute_chebyshev_colloc_10012(0.5))
end
