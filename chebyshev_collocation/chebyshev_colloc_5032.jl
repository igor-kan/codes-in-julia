module ChebyshevCollocStep5032
export compute_chebyshev_colloc_5032
function compute_chebyshev_colloc_5032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep5032,Test
@testset "ChebyshevCollocStep5032" begin
    @test isfinite(compute_chebyshev_colloc_5032(0.5))
end
