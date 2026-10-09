module ChebyshevCollocStep8072
export compute_chebyshev_colloc_8072
function compute_chebyshev_colloc_8072(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8072,Test
@testset "ChebyshevCollocStep8072" begin
    @test isfinite(compute_chebyshev_colloc_8072(0.5))
end
