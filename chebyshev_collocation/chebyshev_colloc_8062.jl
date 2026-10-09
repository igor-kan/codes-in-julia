module ChebyshevCollocStep8062
export compute_chebyshev_colloc_8062
function compute_chebyshev_colloc_8062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8062,Test
@testset "ChebyshevCollocStep8062" begin
    @test isfinite(compute_chebyshev_colloc_8062(0.5))
end
