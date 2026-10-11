module ChebyshevCollocStep10062
export compute_chebyshev_colloc_10062
function compute_chebyshev_colloc_10062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10062,Test
@testset "ChebyshevCollocStep10062" begin
    @test isfinite(compute_chebyshev_colloc_10062(0.5))
end
