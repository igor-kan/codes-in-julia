module ChebyshevCollocStep8052
export compute_chebyshev_colloc_8052
function compute_chebyshev_colloc_8052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep8052,Test
@testset "ChebyshevCollocStep8052" begin
    @test isfinite(compute_chebyshev_colloc_8052(0.5))
end
