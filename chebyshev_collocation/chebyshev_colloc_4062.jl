module ChebyshevCollocStep4062
export compute_chebyshev_colloc_4062
function compute_chebyshev_colloc_4062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4062,Test
@testset "ChebyshevCollocStep4062" begin
    @test isfinite(compute_chebyshev_colloc_4062(0.5))
end
