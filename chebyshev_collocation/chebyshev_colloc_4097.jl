module ChebyshevCollocStep4097
export compute_chebyshev_colloc_4097
function compute_chebyshev_colloc_4097(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4097,Test
@testset "ChebyshevCollocStep4097" begin
    @test isfinite(compute_chebyshev_colloc_4097(0.5))
end
