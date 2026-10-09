module ChebyshevCollocStep8087
export compute_chebyshev_colloc_8087
function compute_chebyshev_colloc_8087(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep8087,Test
@testset "ChebyshevCollocStep8087" begin
    @test isfinite(compute_chebyshev_colloc_8087(0.5))
end
