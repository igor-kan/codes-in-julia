module ChebyshevCollocStep8012
export compute_chebyshev_colloc_8012
function compute_chebyshev_colloc_8012(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8012,Test
@testset "ChebyshevCollocStep8012" begin
    @test isfinite(compute_chebyshev_colloc_8012(0.5))
end
