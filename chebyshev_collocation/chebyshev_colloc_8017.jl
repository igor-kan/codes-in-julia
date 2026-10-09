module ChebyshevCollocStep8017
export compute_chebyshev_colloc_8017
function compute_chebyshev_colloc_8017(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8017,Test
@testset "ChebyshevCollocStep8017" begin
    @test isfinite(compute_chebyshev_colloc_8017(0.5))
end
