module ChebyshevCollocStep3032
export compute_chebyshev_colloc_3032
function compute_chebyshev_colloc_3032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep3032,Test
@testset "ChebyshevCollocStep3032" begin
    @test isfinite(compute_chebyshev_colloc_3032(0.5))
end
