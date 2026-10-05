module ChebyshevCollocStep2032
export compute_chebyshev_colloc_2032
function compute_chebyshev_colloc_2032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep2032,Test
@testset "ChebyshevCollocStep2032" begin
    @test isfinite(compute_chebyshev_colloc_2032(0.5))
end
