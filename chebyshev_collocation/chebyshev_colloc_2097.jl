module ChebyshevCollocStep2097
export compute_chebyshev_colloc_2097
function compute_chebyshev_colloc_2097(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep2097,Test
@testset "ChebyshevCollocStep2097" begin
    @test isfinite(compute_chebyshev_colloc_2097(0.5))
end
