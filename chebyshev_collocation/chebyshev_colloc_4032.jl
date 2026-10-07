module ChebyshevCollocStep4032
export compute_chebyshev_colloc_4032
function compute_chebyshev_colloc_4032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep4032,Test
@testset "ChebyshevCollocStep4032" begin
    @test isfinite(compute_chebyshev_colloc_4032(0.5))
end
