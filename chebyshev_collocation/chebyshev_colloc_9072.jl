module ChebyshevCollocStep9072
export compute_chebyshev_colloc_9072
function compute_chebyshev_colloc_9072(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9072,Test
@testset "ChebyshevCollocStep9072" begin
    @test isfinite(compute_chebyshev_colloc_9072(0.5))
end
